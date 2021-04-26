import 'package:flutter/material.dart';

class AppColors {
  static final Color black = Color(0xff000000);
  static final Color nightBlue = Color(0xff0a0a0a);
  static final Color darkBlue = Color(0xff001e2e);
  static final Color green = Color(0xff33ff7b);
  static final Color grey = Color(0xff787878);
  static final Color lightGrey = Color(0xffd4e3e3);
  static final Color white = Color(0xffffffff);
}

Map<int, Color> darkSwatch = {
  50: AppColors.nightBlue.withOpacity(0.1),
  100: AppColors.nightBlue.withOpacity(0.2),
  200: AppColors.nightBlue.withOpacity(0.3),
  300: AppColors.nightBlue.withOpacity(0.4),
  400: AppColors.nightBlue.withOpacity(0.5),
  500: AppColors.nightBlue.withOpacity(0.6),
  600: AppColors.nightBlue.withOpacity(0.7),
  700: AppColors.nightBlue.withOpacity(0.8),
  800: AppColors.nightBlue.withOpacity(0.9),
  900: AppColors.nightBlue,
};
