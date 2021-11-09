import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:movil181/app/ui/common/atoms/atoms_common.dart';
import 'package:movil181/app/ui/common/molecules/molecules_common.dart';
import 'package:movil181/app/ui/common/organisms/organisms_common.dart';
import 'package:flutter_meedu/router.dart' as router;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MoleculesCommon().appBarGeneral('Hola, David Bello'),
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.black87,
        borderRadius: 20,
        itemBorderRadius: 20,
        onTap: (int val) {
          //returns tab id which is user tapped
        },
        currentIndex: 0,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Inicio'),
          FloatingNavbarItem(icon: Icons.search, title: 'Buscar'),
          FloatingNavbarItem(
              icon: Icons.shopping_cart_outlined, title: 'Pedido'),
          FloatingNavbarItem(icon: Icons.list_alt, title: 'Notas'),
          FloatingNavbarItem(icon: Icons.account_circle, title: 'Cuenta'),
        ],
      ),
    );
  }
}
