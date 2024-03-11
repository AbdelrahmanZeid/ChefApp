import 'package:chef_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
  double height=0,
  double width=0,
]) {
  return SizedBox(
    height: height.h,
    width: width.w,
  );
}
