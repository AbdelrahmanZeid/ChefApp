import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/features/auth/presentation/widgets/reset_password_view_body.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: AppColors.primary,
        title: Text(
          S.of(context).createYourNewPassword,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body:const  ResetPasswordViewBody(),
    );
  }
}
