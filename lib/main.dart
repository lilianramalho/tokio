import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio/src/presenter/screens/user/user_screen.dart';
import 'package:tokio/src/presenter/screens/login/login_screen.dart';
import 'package:tokio/src/presenter/screens/webview/custom_web_view.dart';
import 'package:tokio/src/utils/constants/name_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return const LoginScreen();
        },
      ),
      initialRoute: loginScreen,
      getPages: [
        GetPage(name: webViewScreen, page: () => const CustomWebView()),
        GetPage(name: loginScreen, page: () => const LoginScreen()),
        GetPage(name: userScreen, page: () => const UserScreen()),
      ],
    );
  }
}
