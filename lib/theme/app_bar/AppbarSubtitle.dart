import 'package:flutter/material.dart';
import 'package:mecopluscompunets/theme/custom_textstyle.dart';
import 'package:mecopluscompunets/theme/theme_helper.dart';

// ignore: must_be_immutable
// ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable
class AppbarSubtitle extends StatelessWidget {
  AppbarSubtitle({Key? key, required this.text, this.margin, this.onTap})
      : super(
          key: key,
        );
  String text;
  EdgeInsetsGeometry? margin;
  Function? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: Padding(
          padding: margin ?? EdgeInsets.zero,
          child: Text(
            text,
            style: CustomTextStyles.titleLargeWhiteA700_2.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ));
  }
}
