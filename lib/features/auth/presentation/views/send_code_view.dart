import 'package:chef_app/core/services/service_locator.dart';
import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/features/auth/data/repositry/auth_repo.dart';
import 'package:chef_app/features/auth/presentation/cubits/send_code_cubit/cubit/send_code_cubit.dart';

import 'package:chef_app/features/auth/presentation/widgets/send_code_view_body.dart';
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
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => sl<SendCodeCubit>(),
        child: const SendCodeViewBody(),
      ),
    );
  }
}
