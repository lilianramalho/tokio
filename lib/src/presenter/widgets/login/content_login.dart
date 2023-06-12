import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:tokio/src/presenter/widgets/login/login_button.dart';
import 'package:tokio/src/presenter/widgets/login/text_field_email.dart';
import 'package:tokio/src/presenter/widgets/login/text_field_senha.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class ContentLogin extends StatelessWidget {
  const ContentLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 75.w,
      height: 35.h,
      decoration: const BoxDecoration(
        color: variationBackground,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Padding(
            padding:  EdgeInsets.only(top: 8.0),
            child:  Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold, color: white),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Cadastrar",
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold, color: white),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: TextFieldEmail(),
          ),
          const Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: TextFieldSenha(),
          ),
          Positioned(
            bottom: 40,
            left: 10,
            child: Row(
              children: [
                RoundCheckBox(
                  size: 20,
                  checkedColor: green,
                  isChecked: true,
                  onTap: (selected) {},
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Lembrar Sempre",
                    style: TextStyle(
                        color: white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Esqueceu a senha?",
                    style: TextStyle(
                        color: green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: -35,
            left: 100,
            child: LoginButton(),
          ),
        ],
      ),
    );
  }
}
