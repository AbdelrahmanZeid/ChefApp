
import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/core/utils/app_text_style.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class ImagePickerDialog extends StatelessWidget {
  const ImagePickerDialog({
    super.key, required this.cameraOnTap, required this.gallaeryOnTap,
  });
  final VoidCallback cameraOnTap;
  final VoidCallback gallaeryOnTap;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.black12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: cameraOnTap,
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
            onTap: gallaeryOnTap,
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
  }
}
