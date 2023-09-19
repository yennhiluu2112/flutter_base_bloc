// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

extension ThemeDataExtension on BuildContext {
  Color dynamicColor({required Color light, required Color dark}) {
    return (Theme.of(this).brightness == Brightness.light) ? light : dark;
  }

  // Light(Number)Dark(Number)
  Color get mainBackground =>
      dynamicColor(light: AppColors.infoSoft, dark: AppColors.greyG100);
  Color get background =>
      dynamicColor(light: AppColors.white, dark: AppColors.greyG100);
  Color get background_bottom_tab =>
      dynamicColor(light: AppColors.white, dark: AppColors.greyG150);
  Color get primaryText =>
      dynamicColor(light: AppColors.greyG100, dark: AppColors.white);

  Color get whiteBlackG50 =>
      dynamicColor(light: AppColors.white, dark: AppColors.blackG50);

  Color get blackG50White =>
      dynamicColor(light: AppColors.blackG50, dark: AppColors.white);

  Color get greyG100_secondary400 =>
      dynamicColor(light: AppColors.greyG100, dark: AppColors.secondary600);
  Color get greyG_200_400 =>
      dynamicColor(light: AppColors.greyG200, dark: AppColors.greyG400);
  Color get greyG300_white =>
      dynamicColor(light: AppColors.greyG300, dark: AppColors.white);
  Color get grey200_primary400 =>
      dynamicColor(light: AppColors.greyG200, dark: AppColors.primary400);
  Color get primary600_grey300 =>
      dynamicColor(light: AppColors.primary600, dark: AppColors.greyG300);
  Color get greyG_200_300 =>
      dynamicColor(light: AppColors.greyG200, dark: AppColors.greyG300);

  Color get primary_600_500 =>
      dynamicColor(light: AppColors.primary600, dark: AppColors.primary500);
  Color get primary_600_400 =>
      dynamicColor(light: AppColors.primary600, dark: AppColors.primary400);
  Color get primary600_secondary400 =>
      dynamicColor(light: AppColors.primary600, dark: AppColors.secondary600);

  Color get secondary_600_500 =>
      dynamicColor(light: AppColors.secondary600, dark: AppColors.secondary600);
  Color get grey_200_G300 =>
      dynamicColor(light: Colors.grey.shade200, dark: AppColors.greyG300);
}
