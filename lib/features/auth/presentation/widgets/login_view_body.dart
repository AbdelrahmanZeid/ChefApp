import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/core/utils/app_function.dart';
import 'package:chef_app/core/utils/app_routes.dart';
import 'package:chef_app/core/utils/app_string.dart';
import 'package:chef_app/core/utils/app_text_style.dart';
import 'package:chef_app/core/utils/assets.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:chef_app/core/widgets/custom_loading_indicator.dart';
import 'package:chef_app/core/widgets/custom_text_form_field.dart';
import 'package:chef_app/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:chef_app/features/auth/presentation/cubits/login_cubit/login_state.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          width: double.infinity,
          fit: BoxFit.cover,
          Assets.assetsImagesBackgroundImage1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccessState) {
                showToast(
                  message: AppStrings.loginSucessfully,
                  states: ToastStates.success,
                );
              } else if (state is LoginFailuerState) {
                showToast(
                  message: state.message,
                  states: ToastStates.error,
                );
              }
            },
            builder: (context, state) {
              return Form(
                key: context.read<LoginCubit>().formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addSpace(
                        96,
                      ),
                      Center(
                        child: Text(
                          S.of(context).welcomeBack,
                          style: boldStyle(
                            fontSize: 32,
                          ),
                        ),
                      ),
                      addSpace(
                        196,
                      ),
                      CustomTextFormField(
                        validate: (data) {
                          if (data!.length < 6 || data.isEmpty) {
                            return S.of(context).please_enter_email;
                          } else {
                            return null;
                          }
                        },
                        hint: S.of(context).email,
                        controller: context.read<LoginCubit>().emailController,
                      ),
                      addSpace(
                        25,
                      ),
                      CustomTextFormField(
                        validate: (data) {
                          if (data!.length < 6 || data.isEmpty) {
                            return S.of(context).please_enter_valid_password;
                          } else {
                            return null;
                          }
                        },
                        icon: context.read<LoginCubit>().isVisiable
                            ? Icons.visibility_off
                            : Icons.visibility,
                        hint: S.of(context).password,
                        isPassword: context.read<LoginCubit>().isVisiable,
                        suffixIconOnPressed: () {
                          context.read<LoginCubit>().changeIcon();
                        },
                        controller:
                            context.read<LoginCubit>().passwordController,
                      ),
                      addSpace(
                        24,
                      ),
                      Text(
                        S.of(context).forgetPassword,
                        style: regularStyle(
                          fontSize: 22,
                          color: AppColors.black,
                        ),
                      ),
                      addSpace(
                        55,
                      ),
                      state is LoginLoadingState
                          ? const CustomLoadingIndicator()
                          : CustomElevatedButton(
                              width: 327.w,
                              height: 50.h,
                              bgColor: AppColors.primary,
                              title: S.of(context).sign_in,
                              onPressed: () {
                                if (context
                                    .read<LoginCubit>()
                                    .formKey
                                    .currentState!
                                    .validate()) {
                                  context.read<LoginCubit>().login();
                                  navigation(
                                    context,
                                    AppRoutes.sendCode,
                                  );
                                }
                              },
                            ),
                      addSpace(
                        30,
                      ),
                      Row(
                        children: [
                          Text(
                            S.of(context).dontHaveAccount,
                            style: regularStyle(
                              fontSize: 22,
                              color: AppColors.grey,
                            ),
                          ),
                          Text(
                            S.of(context).sign_up,
                            style: regularStyle(
                              fontSize: 18,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
