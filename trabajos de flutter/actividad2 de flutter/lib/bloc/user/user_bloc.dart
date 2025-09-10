import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<FetchUser>(_onFetchUser);
  }

  Future<void> _onFetchUser(FetchUser event, Emitter<UserState> emit) async {
    emit(UserLoading());

    try {
      final response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/users/${event.id}"));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        emit(UserSuccess(data));
      } else {
        emit(const UserError("Error al cargar los datos"));
      }
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
}
