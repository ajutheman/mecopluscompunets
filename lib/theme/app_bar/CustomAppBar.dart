// import 'package: flutter/material.dart';
// import '../../core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:mecopluscompunets/theme/theme_helper.dart';
import 'package:mecopluscompunets/utils/size_utils.dart';

enum Style { bgFill_1, bgFill }

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions})
      : super(
          key: key,
        );
  final double? height;
  final Style? styleType;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 59.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 59.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Container(
          height: 59.v,
          width: double.maxFinite,
          margin: EdgeInsets.only(right: 9.h),
          decoration: BoxDecoration(
            color: appTheme.cyan900,
          ),
        );
      case Style.bgFill:
        return Container(
          height: 66.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.cyan900,
          ),
        );
      default:
        return null;
    }
  }
}
