import 'package:chef_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.primary,
  );
}

ThemeData getAppDarkTheme() {
  return ThemeData.dark();
}

void navigation(context, String path) {
  GoRouter.of(context).push(
    path,
  );
}

void goBack(context) {
  GoRouter.of(context).pop();
}

void navigationWithReplace(context, String path) {
  GoRouter.of(context).pushReplacement(
    path,
  );
}

Widget addSpace([
  double height = 0,
  double width = 0,
]) {
  return SizedBox(
    height: height.h,
    width: width.w,
  );
}

void showToast({required String message, required ToastStates states}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: toastColor(
        states,
      ),
      textColor: Colors.white,
      fontSize: 16.0);
}

enum ToastStates { success, error, wrining }

Color toastColor(ToastStates states) {
  switch (states) {
    case ToastStates.error:
      return Colors.red;
    case ToastStates.success:
      return Colors.yellow;
    case ToastStates.wrining:
      return Colors.orange;
  }
}

 Future<XFile?> pickImage(ImageSource source) async {
  XFile? image = await ImagePicker().pickImage(
    source: source,
  );
  if(image !=null){
    return image;
  }else{
    return null;
  }
}
