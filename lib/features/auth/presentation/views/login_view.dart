import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/core/utils/app_function.dart';
import 'package:chef_app/core/utils/app_string.dart';
import 'package:chef_app/core/utils/app_text_style.dart';
import 'package:chef_app/core/utils/assets.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:chef_app/core/widgets/custom_text_form_field.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
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
              child: Form(
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
                            return AppStrings.pleaseEnterValidEmail;
                          } else {
                            return null;
                          }
                        },
                        hint: S.of(context).email,
                        controller: TextEditingController(),
                      ),
                      addSpace(
                        25,
                      ),
                      CustomTextFormField(
                        validate: (data) {
                          if (data!.length < 6 || data.isEmpty) {
                            return AppStrings.pleaseEnterValidPassword;
                          } else {
                            return null;
                          }
                        },
                        icon: Icons.visibility_off,
                        hint: S.of(context).password,
                        isPassword: true,
                        suffixIconOnPressed: () {},
                        controller: TextEditingController(),
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
                      CustomElevatedButton(
                        width: 327.w,
                        height: 50.h,
                        bgColor: AppColors.primary,
                        title: S.of(context).sign_in,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
