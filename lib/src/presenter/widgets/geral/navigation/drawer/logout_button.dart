import 'package:flutter/material.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, bottom: 40),
      child: GestureDetector(
        onTap: () {},
        child: const Text(
          "Sair",
          style: TextStyle(
            color: green,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
