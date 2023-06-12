import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio/src/presenter/controller/login/login_controller.dart';
import 'package:tokio/src/presenter/widgets/login/content_login.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 100.w,
            height: 50.h,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [green, yellow],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SafeArea(
                      child: Image.asset(
                    'assets/images/geral/tokio-marine-seguradora.png',
                    width: 70,
                    height: 70,
                  )),
                  const Text(
                    "Bem vindo!",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Aqui você gerencia os seus seguros e de seus familiares em poucos cliques!",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: white),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 100.w,
            height: 50.h,
            decoration: const BoxDecoration(
              color: backgroundColor,
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const Positioned(bottom: 300, left: 50, child: ContentLogin()),
                Positioned(
                  bottom: 150,
                  left: 80,
                  child: Column(
                    children: [
                      const Text(
                        "Acesse através das redes sociais",
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () async {
                              await loginController.login();
                            },
                            icon: Image.asset('assets/images/geral/google.png'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon:
                                Image.asset('assets/images/geral/facebook.png'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon:
                                Image.asset('assets/images/geral/twitter.png'),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
