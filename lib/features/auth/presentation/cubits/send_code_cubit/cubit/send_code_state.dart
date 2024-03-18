

sealed class SendCodeState {}

final class SendCodeInitial extends SendCodeState {}
final class SendCodeSuccess extends SendCodeState {}
final class SendCodeLoading extends SendCodeState {}
final class SendCodeFailuer extends SendCodeState {

  final String erroressage;

  SendCodeFailuer(this.erroressage);
}
