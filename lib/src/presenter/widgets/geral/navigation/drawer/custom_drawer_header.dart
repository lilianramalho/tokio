import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio/src/utils/tokens/colors/custom_colors.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(
                'Olá!',
                style: TextStyle(
                  color: white,
                  fontSize: 10,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      width: 50.px,
                      height: 50.px,
                      child: Image.asset('assets/images/home/man.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Minha Conta',
                            style: TextStyle(
                              color: green,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(
                              onPressed: () => print(''),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
