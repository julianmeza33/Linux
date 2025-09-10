import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class LoginSubmitted extends LoginEvent {
  final String nombre;
  final String contrasena;
  final String documento;

  const LoginSubmitted(this.nombre, this.contrasena, this.documento);

  @override
  List<Object?> get props => [nombre, contrasena, documento];
}
