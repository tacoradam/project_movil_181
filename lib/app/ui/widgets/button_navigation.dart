import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ButtonNavigation extends StatelessWidget {
  const ButtonNavigation({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget bottomNavigation() {
    return FloatingNavbar(
      backgroundColor: Colors.black87,
      borderRadius: 20,
      itemBorderRadius: 20,
      onTap: (int val) {
        //returns tab id which is user tapped
      },
      currentIndex: index,
      items: [
        FloatingNavbarItem(icon: Icons.home, title: 'Inicio'),
        FloatingNavbarItem(icon: Icons.search, title: 'Buscar'),
        FloatingNavbarItem(icon: Icons.shopping_cart_outlined, title: 'Pedido'),
        FloatingNavbarItem(icon: Icons.list_alt, title: 'Notas'),
        FloatingNavbarItem(icon: Icons.account_circle, title: 'Cuenta'),
      ],
    );
  }
}
