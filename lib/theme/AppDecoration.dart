import 'package:flutter/material.dart';
import 'package:mecopluscompunets/theme/theme_helper.dart';
import 'package:mecopluscompunets/utils/size_utils.dart';

class AppDecoration {
// Fill decorations
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan900,
      );
  static BoxDecoration get fillCyan400 => BoxDecoration(
        color: appTheme.cyan400,
      );
  static BoxDecoration get fillCyan50 => BoxDecoration(
        color: appTheme.cyan50,
      );
  static BoxDecoration get fillCyan800 => BoxDecoration(
        color: appTheme.cyan800,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray40089,
      );
  static BoxDecoration get fillonErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillorange => BoxDecoration(
        color: appTheme.orange500,
      );
  static BoxDecoration get fillOrangeA => BoxDecoration(
        color: appTheme.orangeA700,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillYellowA => BoxDecoration(
        color: appTheme.yellowA200,
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.cyan50,
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.cyan50,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.44),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.3),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineCyan => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        border: Border.all(
          color: appTheme.cyan900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineCyan900 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.cyan900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: appTheme.cyan800,
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
// Rounded borders
  static BorderRadius get roundedBorder21 => BorderRadius.circular(
        21.h,
      );
  static BorderRadius get roundedBorder47 => BorderRadius.circular(
        47.h,
      );
}
