import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokio/src/presenter/controller/user/user_controller.dart';
import 'package:tokio/src/presenter/controller/webview/web_view_controller.dart';
import 'package:tokio/src/presenter/widgets/geral/navigation/appbar/custom_app_bar.dart';
import 'package:tokio/src/presenter/widgets/geral/navigation/drawer/drawer_menu.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebView extends StatelessWidget {
  const CustomWebView({super.key});

  @override
  Widget build(BuildContext context) {
    final ViewController viewController = Get.put(ViewController());
    final UserController userController = Get.put(UserController());
    return Scaffold(
      drawer: DrawerMenu(name: userController.userModel.name,),
      appBar: const CustomAppBar(),
      body: WebViewWidget(controller: viewController.controller),
    );
  }
}
