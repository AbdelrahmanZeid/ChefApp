import 'package:bloc/bloc.dart';
import 'package:chef_app/features/auth/data/repositry/auth_repo.dart';
import 'package:chef_app/features/auth/presentation/cubits/send_code_cubit/cubit/send_code_state.dart';
import 'package:flutter/material.dart';

class SendCodeCubit extends Cubit<SendCodeState> {
  SendCodeCubit(
    this.authRepo,
  ) : super(
          SendCodeInitial(),
        );
  AuthRepo authRepo;
  final formKey = GlobalKey<FormState>();

  TextEditingController sendCodeController = TextEditingController();
  void sendCode() async {
    emit(
      SendCodeLoading(),
    );
    final result = await authRepo.sendCode(
      sendCodeController.text,
    );
    result.fold(
      (l) => emit(
        SendCodeFailuer(
          l,
        ),
      ),
      (r) => emit(
        SendCodeSuccess(),
      ),
    );
  }
}
