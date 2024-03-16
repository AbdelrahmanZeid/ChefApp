
import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/core/utils/app_function.dart';
import 'package:chef_app/core/utils/assets.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:chef_app/core/widgets/custom_text_form_field.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendCodeViewBody extends StatelessWidget {
  const SendCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 97.h,
        left: 20.w,
        right: 20.w,
      ),
      child: Column(
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
            S.of(context).pleaseEnterValidCode,
          ),
          addSpace(
            26,
          ),
          CustomTextFormField(
            controller: TextEditingController(),
            hint: S.of(context).email,
          ),
          addSpace(
            30,
          ),
          CustomElevatedButton(
            width: 327.w,
            height: 50.h,
            bgColor: AppColors.primary,
            title: S.of(context).sendResetLink,
          ),
        ],
      ),
    );
  }
}
