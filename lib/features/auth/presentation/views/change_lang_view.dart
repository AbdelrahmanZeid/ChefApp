import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/bloc/cubit/global_state.dart';
import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/core/utils/app_function.dart';
import 'package:chef_app/core/utils/app_routes.dart';
import 'package:chef_app/core/utils/app_text_style.dart';
import 'package:chef_app/core/utils/assets.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeLanguageView extends StatelessWidget {
  const ChangeLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalCubit, GlobalState>(
      builder: (context, state) {
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
                      S.of(context).welcomeToChefApp,
                      style: boldStyle(
                        color: AppColors.black,
                        fontSize: 32,
                      ),
                    ),
                    addSpace(
                      20,
                    ),
                    Text(
                      S.of(context).pleaseChooseYourLanguage,
                      style: regularStyle(
                        color: AppColors.black,
                        fontSize: 22,
                      ),
                    ),
                    addSpace(
                      90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomElevatedButton(
                          bgColor: AppColors.black,
                          title: 'English',
                          width: 140,
                          onPressed: () {
                            context.read<GlobalCubit>().changeLanguage(
                                  "en",
                                );
                            navigation(
                              context,
                              AppRoutes.login,
                            );
                          },
                        ),
                        CustomElevatedButton(
                          bgColor: AppColors.black,
                          title: 'العربيه',
                          width: 140,
                          onPressed: () {
                            context.read<GlobalCubit>().changeLanguage(
                                  "ar",
                                );
                            navigation(
                              context,
                              AppRoutes.login,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
