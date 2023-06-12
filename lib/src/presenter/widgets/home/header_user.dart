import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class HeaderUser extends StatelessWidget {
  const HeaderUser({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
      width: 100.w,
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
          colors: [
            green,
            yellow,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              width: 50.px,
              height: 50.px,
              child: Image.asset('assets/images/home/man.png'),
            ),
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text(
                'Bem-vindo!',
                style: TextStyle(
                  fontSize: 14,
                  color: white,
                ),
              ),
               Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  color: white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}