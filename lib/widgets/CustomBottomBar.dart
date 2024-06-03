import 'package:flutter/material.dart';
import 'package:mecopluscompunets/theme/theme_helper.dart';
import 'package:mecopluscompunets/utils/ImageConstant.dart';
import 'package:mecopluscompunets/utils/size_utils.dart';
import 'package:mecopluscompunets/widgets/customimageview.dart';

// import 'package: flutter/material.dart';
// import '../core/app_export.dart';
enum BottomBarEnum { Home, Multiplefile2, Vector, Polaroidfour, Lock }

// ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});
  Function(BottomBarEnum)? onChanged;
  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
// / ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMultipleFile2,
      activeIcon: ImageConstant.imgMultipleFile2,
      type: BottomBarEnum.Multiplefile2,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVector,
      activeIcon: ImageConstant.imgVector,
      type: BottomBarEnum.Vector,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPolaroidFour,
      activeIcon: ImageConstant.imgPolaroidFour,
      type: BottomBarEnum.Polaroidfour,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLock,
      activeIcon: ImageConstant.imgLock,
      type: BottomBarEnum.Lock,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 14.adaptSize,
              width: 14.adaptSize,
              color: appTheme.whiteA700,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 16.v,
              width: 20.h,
              color: appTheme.whiteA700,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

// ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.activeIcon, required this.type});
  String icon;
  String activeIcon;
  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Plese replace the respective widget here",
                  style: TextStyle(
                    fontSize: 18,
                  ))
            ]),
      ),
    );
  }
}
