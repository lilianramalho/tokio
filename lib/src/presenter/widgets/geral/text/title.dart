import 'package:flutter/material.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, bottom: 15),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: white,
        ),
      ),
    );
  }
}
