import 'package:bloc/bloc.dart';
import 'package:chef_app/features/auth/presentation/cubits/cubit/login_state.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit()
      : super(
          LoginInitial(),
        );

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isVisiable = true;
  void changeIcon() {
    isVisiable = !isVisiable;
    emit(
      ChangeIconSuccessState(),
    );
  }
}
