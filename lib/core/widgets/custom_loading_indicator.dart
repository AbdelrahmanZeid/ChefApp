import 'package:chef_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SpinKitRotatingCircle(
      color: AppColors.primary,
      size: 50.0,
    );
  }
}
