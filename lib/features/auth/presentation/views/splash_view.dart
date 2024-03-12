import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/core/utils/app_function.dart';
import 'package:chef_app/core/utils/app_routes.dart';
import 'package:chef_app/core/utils/app_string.dart';
import 'package:chef_app/core/utils/app_text_style.dart';
import 'package:chef_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void delayedNavigate() {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
    ).then((
      value,
    ) {
      navigationWithReplace(
        context,
        AppRoutes.chanegLanguage,
      );
    });
  }

  @override
  void initState() {
    delayedNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
               Assets.assetsImagesLogo,
              ),
            ),
            Text(
              AppStrings.chefApp,
              style: boldStyle(
                color: AppColors.black,
                fontSize: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
