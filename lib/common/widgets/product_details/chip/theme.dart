import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/theme/widget_themes/appbar_theme.dart';
import 'package:t_store/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:t_store/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:t_store/utils/theme/widget_themes/chip_theme.dart';
import 'package:t_store/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:t_store/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:t_store/utils/theme/widget_themes/text_field_theme.dart';
import 'package:t_store/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue, // Ensure this is a valid color
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.grey,
    brightness: Brightness.dark,
    primaryColor: Colors.blueGrey[900] ??
        Colors.blueGrey, // Fallback to ensure it's not null
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
