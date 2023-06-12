import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio/src/presenter/controller/webview/web_view_controller.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.description, required this.type,});
  final String description;
  final String type;

  @override
  Widget build(BuildContext context) {
    final ViewController viewController = Get.put(ViewController());
    return GestureDetector(
      onTap: () => viewController.navigation(),
      child: Card(
        color: backgroundCard,
        child: Container(
          padding: const EdgeInsets.all(15),
          width: 28.w,
          height: 13.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 30.px,
                height: 30.px,
                child: Image.asset('assets/images/home/$type.png'),
              ),
              Text(
                description,
                style: const TextStyle(
                  color: white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
