import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio/src/presenter/controller/user/user_controller.dart';
import 'package:tokio/src/utils/constants/name_pages.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());
    return GestureDetector(
      onTap: () async {
        await userController.getUserInfo();
        Get.toNamed(userScreen);
      },
      child: Container(
        width: 16.w,
        height: 7.h,
        decoration: BoxDecoration(
          color: Colors.amber,
          gradient: const LinearGradient(
              colors: [green, yellow],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
