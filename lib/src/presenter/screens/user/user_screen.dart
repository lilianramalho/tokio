import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokio/src/presenter/controller/user/user_controller.dart';
import 'package:tokio/src/presenter/widgets/geral/navigation/appbar/custom_app_bar.dart';
import 'package:tokio/src/presenter/widgets/geral/navigation/drawer/drawer_menu.dart';
import 'package:tokio/src/presenter/widgets/geral/text/title.dart';
import 'package:tokio/src/presenter/widgets/home/contract_container.dart';
import 'package:tokio/src/presenter/widgets/home/family_container.dart';
import 'package:tokio/src/presenter/widgets/home/header_user.dart';
import 'package:tokio/src/presenter/widgets/home/menu_row.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());

    return Scaffold(
      drawer:  DrawerMenu(name: userController.userModel.name,),
      appBar: const CustomAppBar(),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          HeaderUser(
            name: userController.userModel.name,
          ),
          const CustomTitle(text: "Cotar e Contratar"),
          const MenuRow(),
          const CustomTitle(text: "Minha Família"),
          const FamilyContainer(),
          const CustomTitle(text: "Contratados"),
          const ContractContainer(),
        ]),
      ),
    );
  }
}
