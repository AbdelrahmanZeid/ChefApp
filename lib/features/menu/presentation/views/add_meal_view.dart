import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/core/utils/app_function.dart';
import 'package:chef_app/core/utils/assets.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:chef_app/core/widgets/custom_text_form_field.dart';
import 'package:chef_app/features/menu/presentation/widgets/image_picker_dialog.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddMealView extends StatelessWidget {
  const AddMealView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          child: Form(
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        Assets.assetsImagesAvatar,
                      ),
                    ),
                    Positioned.directional(
                      bottom: -8,
                      end: 100,
                      textDirection: Directionality.of(
                        context,
                      ),
                      child: IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) {
                                return ImagePickerDialog(
                                  cameraOnTap: () async {
                                    goBack(
                                      context,
                                    );
                                    await pickImage(
                                      ImageSource.camera,
                                    ).then((value) => null);
                                  },
                                  gallaeryOnTap: () async {
                                    goBack(
                                      context,
                                    );
                                    await pickImage(
                                      ImageSource.gallery,
                                    ).then((value) => null);
                                  },
                                );
                              });
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 35,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                addSpace(
                  15,
                ),
                CustomTextFormField(
                  hint: S
                      .of(
                        context,
                      )
                      .mealName,
                  controller: TextEditingController(),
                ),
                addSpace(
                  15,
                ),
                CustomTextFormField(
                  hint: S
                      .of(
                        context,
                      )
                      .mealPrice,
                  controller: TextEditingController(),
                ),
                addSpace(
                  15,
                ),
                CustomTextFormField(
                  hint: S
                      .of(
                        context,
                      )
                      .mealDesc,
                  controller: TextEditingController(),
                ),
                addSpace(
                  16,
                ),
                CustomElevatedButton(
                  bgColor: AppColors.primary,
                  title: S
                      .of(
                        context,
                      )
                      .addToMenu,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
