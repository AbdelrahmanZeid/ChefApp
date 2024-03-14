


sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class ChangeIconSuccessState extends LoginState {}
final class LoginLoadingState extends LoginState {}
final class LoginSuccessState extends LoginState {}
final class LoginFailuerState extends LoginState {
  final String message;
  LoginFailuerState(this.message,);
}
