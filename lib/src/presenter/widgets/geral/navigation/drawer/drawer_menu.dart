import 'package:flutter/material.dart';
import 'package:tokio/src/presenter/widgets/geral/navigation/drawer/custom_drawer_bottom.dart';
import 'package:tokio/src/presenter/widgets/geral/navigation/drawer/custom_drawer_header.dart';
import 'package:tokio/src/presenter/widgets/geral/navigation/drawer/custom_list_tile.dart';
import 'package:tokio/src/presenter/widgets/geral/navigation/drawer/logout_button.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      child: ListView(
        children:  [
          CustomDrawerHeader(name: name,),
          CustomListTile(title: "Home/Seguros"),
          CustomListTile(title: "Minhas Contratações"),
          CustomListTile(title: "Meus sinistros"),
          CustomListTile(title: "Minha Família"),
          CustomListTile(title: "Meus Bens"),
          CustomListTile(title: "Pagamentos"),
          CustomListTile(title: "Corretoras"),
          CustomListTile(title: "Validar Boletos"),
          CustomListTile(title: "Telefones Importantes"),
          CustomListTile(title: "Configurações"),
          LogoutButton(),
          CustomDrawerBottom(),
        ],
      ),
    );
  }
}
