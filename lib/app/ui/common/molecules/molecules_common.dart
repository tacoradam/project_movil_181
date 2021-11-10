import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:movil181/app/ui/common/atoms/atoms_common.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'package:movil181/app/ui/routes/routes.dart';

class MoleculesCommon extends StatelessWidget {
  const MoleculesCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget form() {
    return Form(
        child: Column(
      children: <Widget>[
        AtomsCommon().textFieldRegistro(
            false, false, 'Email', 'Email', 'email', 'alternateEmail'),
        SizedBox(height: 20),
        AtomsCommon().textFieldRegistro(false, false, 'Nombre de la persona',
            'Nombre', 'accessibility', 'acountCircle'),
        SizedBox(height: 20),
        AtomsCommon().textFieldRegistro(
            false, true, 'Contraseña', 'Contraseña', 'visibilityOff', 'lock'),
        SizedBox(height: 20),
        AtomsCommon().textFieldRegistro(false, true, 'Confirmar contraseña',
            'Confirmar contraseña', 'visibility', 'lock'),
        SizedBox(height: 20),
        AtomsCommon().buttomSend('Registrar', Routes.HOME),
        SizedBox(height: 20),
        AtomsCommon().buttomSend('Ir a Home Temp', Routes.HOME),
      ],
    ));
  }

  Widget headerRegister() {
    return Column(
      children: <Widget>[
        AtomsCommon().logo(),
        SizedBox(height: 30),
        AtomsCommon().textTitleRegister('Registro'),
      ],
    );
  }

  PreferredSizeWidget appBarGeneral(String title) {
    return AppBar(
      elevation: 0.0,
      title: AtomsCommon().textSubtitle(title),
      actions: <Widget>[
        //AtomsCommon().buttomAppbBar('notifications'),
        AtomsCommon().buttomAppbBar('favorite'),
        AtomsCommon().buttomAppbBar('notifications'),
      ],
    );
  }

  Widget bottomNavigation() {
    return FloatingNavbar(
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
        FloatingNavbarItem(icon: Icons.shopping_cart_outlined, title: 'Pedido'),
        FloatingNavbarItem(icon: Icons.list_alt, title: 'Notas'),
        FloatingNavbarItem(icon: Icons.account_circle, title: 'Cuenta'),
      ],
    );
  }

  Widget promo(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AtomsCommon().textTitle('Promociones'),
          ),
          SizedBox(height: 10),
          AtomsCommon().swiperCards(context),
        ],
      ),
    );
  }
}
