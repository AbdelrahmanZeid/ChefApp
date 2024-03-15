import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendCodeView extends StatelessWidget {
  const SendCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: AppColors.primary,
        title: Text(
          S.of(context).forgetPassword,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
