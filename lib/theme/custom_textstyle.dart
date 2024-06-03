import 'package:flutter/material.dart';
import 'package:mecopluscompunets/theme/theme_helper.dart';
import 'package:mecopluscompunets/utils/size_utils.dart';

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get sourceSansPro {
    return copyWith(
      fontFamily: 'Source Sans Pro',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get tahoma {
    return copyWith(
      fontFamily: 'Tahoma',
    );
  }

  TextStyle get poppins {
    return copyWith(fontFamily: 'Poppins');
  }

  /// A collection of pre-defined text styles for customizing text appearance,
// /
// categorized by different font families and weights.
  /// Additionally, this class includes extensions on [TextStyle] to easily apply specific
}

class CustomTextStyles {
// Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeTahomaBlack900 =>
      theme.textTheme.bodyLarge!.tahoma.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodyLargeTahomaTeal600 =>
      theme.textTheme.bodyLarge!.tahoma.copyWith(
        color: appTheme.teal600,
        fontSize: 18.fSize,
      );
  static get bodyMediumCyan900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.cyan900,
      );
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.63),
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoBlack90015 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.44),
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoWhiteA700 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );

  static get bodyMediumTahoma => theme.textTheme.bodyMedium!.tahoma.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumTahomaBlack900 =>
      theme.textTheme.bodyMedium!.tahoma.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
// Headline text style
  static get headlineSmallRoboto =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallRobotoErrorContainer =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallSourceSansPro =>
      theme.textTheme.headlineSmall!.sourceSansPro.copyWith(
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallSourceSansProBlack900 =>
      theme.textTheme.headlineSmall!.sourceSansPro.copyWith(
        color: appTheme.black900,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
// Label style
  static get labelLargeRoboto => theme.textTheme.labelLarge!.roboto;
  static get labelLargeRobotoGray700cc =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.gray700Cc,
        fontSize: 13.fSize,
      );
  static get labelLargeSourceSansPro =>
      theme.textTheme.labelLarge!.sourceSansPro;
  static get labelLargeSourceSansProWhiteA700 =>
      theme.textTheme.labelLarge!.sourceSansPro.copyWith(
        color: appTheme.whiteA700,
      );

  static get labelLargeTahoma => theme.textTheme.labelLarge!.tahoma;
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumBlack900_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.44),
      );
  static get labelMediumInterBlack900 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumInterGray700 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumInterWhiteA700 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
      );
// Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargePoppinsWhiteA700 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 20.fSize,
      );

  static get titleLargeSourceSansPro =>
      theme.textTheme.titleLarge!.sourceSansPro.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSourceSansProLight =>
      theme.textTheme.titleLarge!.sourceSansPro.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get titleLargeSourceSansProWhiteA700 =>
      theme.textTheme.titleLarge!.sourceSansPro.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeSourceSansProWhiteA700Regular =>
      theme.textTheme.titleLarge!.sourceSansPro.copyWith(
        color: appTheme.whiteA700,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSourceSansProWhiteA700SemiBold =>
      theme.textTheme.titleLarge!.sourceSansPro.copyWith(
        color: appTheme.whiteA700,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 20.fSize,
      );
  static get titleLargeWhiteA700_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleLargeWhiteA700_2 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumOnError => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumRobotoTeal600 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.teal600,
        fontSize: 18.fSize,
      );
  static get titleMediumRobotoWhiteA700 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumTahomaBlack900 =>
      theme.textTheme.titleMedium!.tahoma.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumTahomaTeal600 =>
      theme.textTheme.titleMedium!.tahoma.copyWith(
        color: appTheme.teal600,
        fontSize: 18.fSize,
      );
  static get titleMediumTahomaTeal60018 =>
      theme.textTheme.titleMedium!.tahoma.copyWith(
        color: appTheme.teal600,
        fontSize: 18.fSize,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  // static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}
