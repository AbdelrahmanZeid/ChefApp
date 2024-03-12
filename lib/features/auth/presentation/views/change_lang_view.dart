import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/core/utils/app_function.dart';
import 'package:chef_app/core/utils/app_string.dart';
import 'package:chef_app/core/utils/app_text_style.dart';
import 'package:chef_app/core/utils/assets.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ChangeLanguageView extends StatelessWidget {
  const ChangeLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black12,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              width: double.infinity,
              fit: BoxFit.cover,
              Assets.assetsImagesBackgroundImage2,
            ),
            Column(
              children: [
                addSpace(
                  180,
                ),
                Center(
                  child: Image.asset(
                    Assets.assetsImagesLogo,
                  ),
                ),
                addSpace(
                  10,
                ),
                Text(
                  AppStrings.welcomeToChefApp,
                  style: boldStyle(
                    color: AppColors.black,
                    fontSize: 32,
                  ),
                ),
                addSpace(
                  20,
                ),
                Text(
                  AppStrings.pleaseChooseYourLanguage,
                  style: regularStyle(
                    color: AppColors.black,
                    fontSize: 22,
                  ),
                ),
                addSpace(
                  90,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomElevatedButton(
                      bgColor: AppColors.black,
                      title: 'English',
                      width: 140,
                    ),
                    CustomElevatedButton(
                      bgColor: AppColors.black,
                      title: 'العربيه',
                      width: 140,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
