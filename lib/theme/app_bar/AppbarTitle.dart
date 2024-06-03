import 'package:flutter/material.dart';
import 'package:mecopluscompunets/theme/custom_textstyle.dart';
import 'package:mecopluscompunets/theme/theme_helper.dart';

// import '../../core/app_export.dart';
// ignore: must_be_immutable
// ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({Key? key, required this.text, this.margin, this.onTap})
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
          style: CustomTextStyles.titleLargeWhiteA700_1.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
      ),
    );
  }
}

// /////
//
// import 'package:flutter/material.dart';
// import '../../core/app_export.dart';
// // ignore: must_be_immutable
// // ignore_for_file: must_be_immutable
// // ignore_for_file: must_be_immutable
// class AppbarTrailingImage extends StatelessWidget {
//   AppbarTrailingImage({Key? key, this.imagePath, this.margin, this.onTap})
//       :
//         super(
//       );
//   key: key,
//   String? imagePath;
//   EdgeInsetsGeometry? margin;
//   Function? onTap;
//   @override
//   Widget build (BuildContext context) {
//     return InkWell(
//         onTap: () {
//       onTap?.call();
//     },
//     child: Padding(
//     padding: margin ?? EdgeInsets.zero,
//     child: CustomImageView(
//     imagePath: imagePath!,
//     height: 31.v,
//     width: 22.h,
//     fit: BoxFit.contain,
