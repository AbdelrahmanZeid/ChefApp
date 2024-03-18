import 'package:bloc/bloc.dart';
import 'package:chef_app/features/auth/data/models/login_model.dart';
import 'package:chef_app/features/auth/data/repositry/auth_repo.dart';
import 'package:chef_app/features/auth/presentation/cubits/login_cubit/login_state.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo)
      : super(
          LoginInitial(),
        );

  final AuthRepo authRepo;

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

  LoginModel? loginModel;
  void login() async {
    emit(
      LoginLoadingState(),
    );
    final result = await authRepo.login(
      email: emailController.text,
      password: passwordController.text,
    );
    result.fold(
      (l) => emit(
        LoginFailuerState(
          l,
        ),
      ),
      (r) {
        loginModel = r;
        emit(
          LoginSuccessState(),
        );
      },
    );
  }
}
