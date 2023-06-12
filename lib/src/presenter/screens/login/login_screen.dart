import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio/src/presenter/widgets/login/content_login.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SafeArea(child: Text("TOKIO MARINE")),
                  Text(
                    "Bem vindo!",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                  SizedBox(height: 10,),
                  Text(
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
            child: const Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(bottom: 300, left: 50, child: ContentLogin())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
