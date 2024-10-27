import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: TColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(
        color: TColors.black, fontSize: 14), // Specified font size
    selectedColor: TColors.primary, // Ensure this color is defined and valid
    padding: const EdgeInsets.symmetric(
        horizontal: 8.0, vertical: 8.0), // Adjusted padding for better layout
    checkmarkColor: TColors.white, // Consistent style
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: TColors.darkerGrey,
    labelStyle:
        TextStyle(color: TColors.white, fontSize: 14), // Specified font size
    selectedColor: TColors.primary, // Ensure this color is defined and valid
    padding: EdgeInsets.symmetric(
        horizontal: 8.0, vertical: 8.0), // Adjusted padding for better layout
    checkmarkColor: TColors.white,
  );
}
