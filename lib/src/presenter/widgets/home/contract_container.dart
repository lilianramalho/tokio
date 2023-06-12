import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class ContractContainer extends StatelessWidget {
  const ContractContainer({super.key});

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
            SizedBox(
                child: Image.asset(
              'assets/images/home/sad.png',
              width: 50,
              height: 50,
            )),
            const Text(
              'Você ainda não possui contratados',
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
