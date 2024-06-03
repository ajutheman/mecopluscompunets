import 'package:flutter/material.dart';
import 'package:mecopluscompunets/utils/size_utils.dart';

// import 'package:flutter/material.dart';
String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
// A map of custom color themes supported by the ap
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };
// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };
  // / Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the light Code colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.black900,
            width: 1,
          ),
          shape: RoundedRectangleBorder(),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return appTheme.gray200;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return appTheme.gray200;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 24,
        space: 24,
        color: appTheme.cyan900,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900.withOpacity(0.44),
          fontSize: 16.fSize,
          fontFamily: 'Source Sans Pro',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Source Sans Pro',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 10.fSize,
          fontFamily: 'Source Sans Pro',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 25.fSize,
          fontFamily: 'Tahoma',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray100,
          fontSize: 10.fSize,
          fontFamily: 'Source Sans Pro',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: appTheme.black900.withOpacity(0.44),
          fontSize: 8.fSize,
          fontFamily: 'Source Sans Pro',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 23.fSize,
          fontFamily: 'Tahoma',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900.withOpacity(0.44),
          fontSize: 16.fSize,
          fontFamily: 'Source Sans Pro',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Source Sans Pro',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF164E63),
    primaryContainer: Color(0XFFA5F3FC),
    errorContainer: Color(0XFF202244),
    onError: Color(0XFF3F3D56),
    onErrorContainer: Color(0XFF67E8F9),
    onPrimary: Color(0XFF030303),
    onPrimaryContainer: Color(0XFF25282B),
  );
}

/// Class containing custom colors for a light Code theme.
class LightCodeColors {
  // Black
  // /
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get black900 => Color(0XFF000000);
  // / BlueGray
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF2E3335);
  Color get blueGray90001 => Color(0XFF292D32);
// Cyan
  Color get cyan400 => Color(0XFF22D3EE);
  Color get cyan50 => Color(0XFFCFFAFE);
  Color get cyan800 => Color(0XFF0E7490);
  Color get cyan900 => Color(0XFF155E75);
// Gray
  Color get gray100 => Color(0XFFEEF5F7);
  Color get gray200 => Color(0XFFEFEFEF);
  Color get gray40089 => Color(0X89C4C4C4);
  Color get gray700 => Color(0XFF696969);
//GrayCc
  Color get gray700Cc => Color(0XCC545454);
  // LightBlue
  Color get lightBlue50 => Color(0XFFECFEFF);
  // LightGreen
  Color get lightGreenA700 => Color(0XFF14FF00);
//Orange
  Color get orange500 => Color(0XFFFF9900);
  Color get orangeA700 => Color(0XFFFF5B00);
// Teal
  Color get teal500 => Color(0XFF06A881);
  Color get teal600 => Color(0XFF019874);
  Color get teal800 => Color(0XFF0A7342);
//White
  Color get whiteA700 => Color(0XFFFFFFFF);
//Yellow
  Color get yellowA200 => Color(0XFFF9FF00);
}
