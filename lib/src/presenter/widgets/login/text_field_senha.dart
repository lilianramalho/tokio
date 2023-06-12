import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class TextFieldSenha extends StatelessWidget {
  const TextFieldSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: 65.w,
        height: 7.h,
        decoration: ShapeDecoration(
          color: variationBackground,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                  color: Colors.white, style: BorderStyle.solid, width: 1.0)),
        ),
        child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            floatingLabelAlignment: FloatingLabelAlignment.center,
            label: Center(
              child: Text('SENHA'),
            ),
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );;
  }
}