import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/core/utils/app_function.dart';
import 'package:chef_app/core/utils/app_routes.dart';
import 'package:chef_app/core/utils/app_text_style.dart';
import 'package:chef_app/core/utils/assets.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:chef_app/core/widgets/custom_text_form_field.dart';
import 'package:chef_app/features/auth/presentation/cubits/send_code_cubit/cubit/send_code_cubit.dart';
import 'package:chef_app/features/auth/presentation/cubits/send_code_cubit/cubit/send_code_state.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: EdgeInsets.only(
        top: 37.h,
        left: 20.w,
        right: 20.w,
      ),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  Assets.assetsImagesLock,
                ),
              ),
              addSpace(
                26,
              ),
              Text(
                S.of(context).createYourNewPassword,
                style: boldStyle(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              addSpace(
                26,
              ),
              CustomTextFormField(
                hint: S.of(context).newPassword,
                controller: TextEditingController(),
              ),
              addSpace(
                24,
              ),
              CustomTextFormField(
                hint: S.of(context).confirmPassword,
                controller: TextEditingController(),
              ),
              addSpace(
                24,
              ),
              CustomTextFormField(
                hint: S.of(context).code,
                controller: TextEditingController(),
              ),
               addSpace(
                40,
              ),
              CustomElevatedButton(
                bgColor: AppColors.primary,
                width: 327,
                height: 50,
                title: S.of(context).sendResetLink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
