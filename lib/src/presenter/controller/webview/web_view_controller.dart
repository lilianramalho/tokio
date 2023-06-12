import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tokio/src/utils/constants/name_pages.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:universal_html/html.dart' as html;

class ViewController extends GetxController {
  late final WebViewController controller;
  String _url =
      'https://flutter.dev/learn';

  @override
  onInit() {
    controller = WebViewController()..loadRequest(Uri.parse(_url));
    super.onInit();
  }

  openNewBlankTab() {
    html.window.open('', '_blank');
  }

  navigation(){
    if (kIsWeb) {
      openNewBlankTab();
    }else{
      Get.toNamed(webViewScreen);
    }
  }
}
