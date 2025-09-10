import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/user/user_bloc.dart';
import '../bloc/user/user_event.dart';
import '../bloc/user/user_state.dart';
import 'user_card.dart';

class UserContainer extends StatelessWidget {
  final int userId;

  const UserContainer({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserBloc()..add(FetchUser(userId)),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is UserError) {
            return Text(
              "Error: ${state.message}",
              style: const TextStyle(color: Colors.redAccent),
            );
          } else if (state is UserSuccess) {
            return UserCard(user: state.user);
          }
          return const Text("Esperando datos...");
        },
      ),
    );
  }
}
