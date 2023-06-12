import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class FamilyContainer extends StatelessWidget {
  const FamilyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 90.w,
        height: 30.h,
        decoration: BoxDecoration(
          color: variationBackground,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () => print(''),
                icon: const Icon(
                  size: 50,
                  Icons.add_circle_outline,
                  color: Colors.white,
                )),
            const Text(
              'Adicione aqui os membros de sua família e compartilhe o seguro com eles',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
