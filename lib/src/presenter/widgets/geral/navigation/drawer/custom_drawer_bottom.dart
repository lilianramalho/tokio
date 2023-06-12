import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class CustomDrawerBottom extends StatelessWidget {
  const CustomDrawerBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 50),
      width: 100.w,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            green,
            yellow,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 50.px,
            height: 50.px,
            child: Image.asset('assets/images/home/woman.png'),
          ),
          const Text(
            'Dúvidas?',
            style: TextStyle(
              color: white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Fale conosco pelos nossos canais de atendimento.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
