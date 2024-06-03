import 'package:flutter/material.dart';
import 'package:mecopluscompunets/theme/AppDecoration.dart';
import 'package:mecopluscompunets/theme/custom_textstyle.dart';
import 'package:mecopluscompunets/theme/theme_helper.dart';
import 'package:mecopluscompunets/utils/ImageConstant.dart';
import 'package:mecopluscompunets/utils/size_utils.dart';
import 'package:mecopluscompunets/widgets/CustomElevatedButton.dart';
import 'package:mecopluscompunets/widgets/customimageview.dart';
import 'package:mecopluscompunets/widgets/customtextfromfield.dart';

import '../app_routes.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 57.h,
                  vertical: 19.v,
                ),
                decoration: AppDecoration.fillGray,
                child: Column(
                  children: [
                    SizedBox(height: 99.v),
                    Text(
                      "Welcome Back!",
                      style: CustomTextStyles.titleLarge20,
                    ),
                    SizedBox(height: 76.v),
                    CustomImageView(
                      imagePath: ImageConstant.loginpageimage,
                      height: 280.v,
                      width: 289.h,
                    ),
                    SizedBox(height: 64.v),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: CustomTextFormField(
                        controller: userNameController,
                        hintText: "Enter your user name",
                        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                        fillColor: appTheme.whiteA700,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: CustomTextFormField(
                        controller: passwordController,
                        hintText: "Enter your password",
                        hintStyle: CustomTextStyles.bodyMediumTahomaBlack900,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                        fillColor: appTheme.whiteA700,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 72.h),
                        child: Text(
                          "Forgot Password",
                          style: CustomTextStyles.titleMediumTahomaTeal600,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    CustomElevatedButton(
                      height: 58.v,
                      buttonStyle: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.teal), // Set the background color
                        side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(
                              color: Colors.tealAccent,
                              width: 1.0), // Set the border color and width
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                3.0), // Set the border radius
                          ),
                        ),
                      ),
                      text: "Login",
                      margin: EdgeInsets.only(right: 8.h),
                      buttonTextStyle:
                          CustomTextStyles.titleLargePoppinsWhiteA700,
                      onPressed: () {
                        onTapLogin(context);
                      },
                    ),
                    SizedBox(height: 34.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an account?",
                            style: CustomTextStyles.bodyLargeTahomaBlack900,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Sign Up",
                            style: CustomTextStyles.titleMediumTahomaTeal60018,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.doctorsDashboradScreen);
  }
}
