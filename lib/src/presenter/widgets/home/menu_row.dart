import 'package:flutter/material.dart';
import 'package:tokio/src/presenter/widgets/home/menu_card.dart';

class MenuRow extends StatelessWidget {
  const MenuRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            MenuCard(description: 'Automóvel', type: 'car',),
            MenuCard(description: 'Vida', type: 'heart',),
            MenuCard(description: 'Moto', type:  'motorbike',),
            MenuCard(description: 'Residêncial', type: 'home',),
            MenuCard(description: 'Empresa', type: 'building',),
          ],
        ),
      ),
    );
  }
}
