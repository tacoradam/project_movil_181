import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:movil181/app/ui/common/atoms/atoms_common.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'package:movil181/app/ui/routes/routes.dart';

class MoleculesCommon extends StatelessWidget {
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

class ListaImgCategories extends StatefulWidget {
  @override
  _ListaImgCategoriesState createState() => _ListaImgCategoriesState();
}

class _ListaImgCategoriesState extends State<ListaImgCategories> {
  List<String> _listProductos = [
    '2.png',
    '1.png',
    '3.png',
    '4.png',
    '5.png',
    '6.png',
    '7.png',
    '8.png',
    '9.png',
    '10.png',
    '11.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _listProductos.length,
      itemBuilder: (BuildContext context, int index) {
        final imag = _listProductos[index];
        return AtomsCommon().imagenSliderCategories(context, imag);
      },
    );
  }
}

class ListaImagenesServicios extends StatefulWidget {
  @override
  _ListaImagenesServiciosState createState() => _ListaImagenesServiciosState();
}

class _ListaImagenesServiciosState extends State<ListaImagenesServicios> {
  List<String> _listServicios = [
    '12.png',
    '13.png',
    '14.png',
    '15.png',
    '16.png',
    '17.png',
    '18.png',
    '19.png',
    '20.png',
    '21.png',
    '22.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _listServicios.length,
      itemBuilder: (BuildContext context, int index) {
        final imag = _listServicios[index];
        return AtomsCommon().imagenSliderCategories(context, imag);
      },
    );
  }
}
