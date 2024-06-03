import 'package:flutter/material.dart';
import 'package:mecopluscompunets/theme/AppDecoration.dart';
import 'package:mecopluscompunets/utils/size_utils.dart';
import 'package:mecopluscompunets/widgets/customimageview.dart';

// import '../../core/app_export.dart';
// ignore: must_be_immutable
//ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable
class AppbarLeadingCircleimage extends StatelessWidget {
  AppbarLeadingCircleimage({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
          key: key,
        );
  String? imagePath;
  EdgeInsetsGeometry? margin;
  Function? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadiusStyle.roundedBorder21,
        onTap: () {
          onTap?.call();
        },
        child: Padding(
          padding: margin ?? EdgeInsets.zero,
          child: CustomImageView(
            imagePath: imagePath!,
            height: 43.adaptSize,
            width: 43.adaptSize,
            fit: BoxFit.contain,
            radius: BorderRadius.circular(21.h),
          ),
        ));
  }
}
