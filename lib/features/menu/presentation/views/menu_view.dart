import 'package:cached_network_image/cached_network_image.dart';
import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:chef_app/features/menu/presentation/widgets/menu_item_widget.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: Column(
            children: [
              CustomElevatedButton(
                bgColor: AppColors.primary,
                title: S.of(context).addDishToMenu,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return const MenuItemWidget();
                  },
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
