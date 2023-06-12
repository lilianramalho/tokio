import 'package:flutter/material.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.settings,
        color: green,
      ),
      title:  Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          color: white,
        ),
      ),
      onTap: () => {}, // separar
    );
  }
}
