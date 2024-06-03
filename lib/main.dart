// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:mecopluscompunets/app_routes.dart';
// import 'package:mecopluscompunets/theme/theme_helper.dart';
// import 'package:mecopluscompunets/utils/size_utils.dart';
//
// var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//   ThemeHelper().changeTheme('primary');
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(
//       builder: (context, orientation, deviceType) {
//         return MaterialApp(
//           theme: theme,
//           title: 'mecoplus',
//           debugShowCheckedModeBanner: false,
//           initialRoute: AppRoutes.initialRoute,
//           routes: AppRoutes.routes,
//         );
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:mecopluscompunets/screen/login_screen.dart';
import 'package:mecopluscompunets/screen/test%20page.dart';
import 'package:mecopluscompunets/theme/theme_helper.dart';
import 'package:mecopluscompunets/utils/size_utils.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: globalMessengerKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Sizer(
        builder: (context, orientation, deviceType) {
          return LoginScreen();
        },
      ),
    );
  }
}
