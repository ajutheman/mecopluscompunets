import 'package:flutter/material.dart';
import 'package:mecopluscompunets/theme/custom_textstyle.dart';
import 'package:mecopluscompunets/theme/theme_helper.dart';
import 'package:mecopluscompunets/utils/size_utils.dart';

// import '../core/app_export.dart';
extension RadioStyleHelper on CustomRadioButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan800,
      );
  static BoxDecoration get fillCyan1 => BoxDecoration(
        color: appTheme.cyan400,
      );
  static BoxDecoration get fillLightGreenA => BoxDecoration(
        color: appTheme.lightGreenA700,
      );
}

// ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable
class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {Key? key,
      required this.onChange,
      this.decoration,
      this.alignment,
      this.isRightCheck,
      this.iconSize,
      this.value,
      this.groupValue,
      this.text,
      this.width,
      this.padding,
      this.textStyle,
      this.textAlignment,
      this.gradient,
      this.backgroundColor})
      : super(
          key: key,
        );
  final BoxDecoration? decoration;
  final Alignment? alignment;
  final bool? isRightCheck;
  final double? iconSize;
  String? value;
  final String? groupValue;
  final Function(String) onChange;
  final String? text;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextAlign? textAlignment;
  final Gradient? gradient;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildRadioButtonWidget)
        : buildRadioButtonWidget;
  }

  bool get isGradient => gradient != null;
  BoxDecoration get gradientDecoration => BoxDecoration(gradient: gradient);
  Widget get buildRadioButtonWidget => GestureDetector(
        onTap: () {
          onChange(value!);
        },
        child: Container(
          decoration: decoration ??
              BoxDecoration(
                color: theme.colorScheme.onErrorContainer,
              ),
          width: width,
          padding: padding,
          child: (isRightCheck ?? false)
              ? rightSideRadioButton
              : leftSideRadioButton,
        ),
      );
  Widget get leftSideRadioButton => Row(
        children: [
          Padding(
            child: radioButtonWidget,
            padding: EdgeInsets.only(right: 8),
          ),
          textWidget
        ],
      );

  Widget get rightSideRadioButton =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        textWidget,
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: radioButtonWidget,
        )
      ]);
  Widget get textWidget => Text(
        text ?? "",
        textAlign: textAlignment ?? TextAlign.start,
        style: textStyle ?? CustomTextStyles.labelMediumInterGray700,
      );
  Widget get radioButtonWidget => SizedBox(
        height: iconSize ?? 10.h,
        width: iconSize ?? 10.h,
        child: Radio<String>(
            visualDensity: VisualDensity(
              vertical: -4,
              horizontal: -4,
            ),
            value: value ?? "",
            groupValue: groupValue,
            onChanged: (value) {
              onChange(value!);
            }),
      );
  BoxDecoration get radioButtonDecoration =>
      BoxDecoration(color: backgroundColor);
}
