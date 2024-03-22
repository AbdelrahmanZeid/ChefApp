import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/core/utils/app_text_style.dart';
import 'package:chef_app/core/utils/assets.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddMealView extends StatelessWidget {
  const AddMealView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S
              .of(
                context,
              )
              .addDishToMenu,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    Assets.assetsImagesAvatar,
                  ),
                  Positioned.directional(
                    bottom: -8,
                    end: -8,
                    textDirection: Directionality.of(
                      context,
                    ),
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return Dialog(
                                backgroundColor: AppColors.black12,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      leading: const Icon(
                                        Icons.camera_alt,
                                        color: AppColors.primary,
                                      ),
                                      title: Text(
                                        S.of(context).camera,
                                        style: regularStyle(
                                          color: AppColors.primary,
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      leading: const Icon(
                                        Icons.photo,
                                        color: AppColors.primary,
                                      ),
                                      title: Text(
                                        S.of(context).gallery,
                                        style: regularStyle(
                                          color: AppColors.primary,
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              );
                            });
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 35,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
