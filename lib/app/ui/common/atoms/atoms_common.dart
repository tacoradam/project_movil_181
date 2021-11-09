import 'package:flutter/material.dart';
import 'package:movil181/app/ui/routes/routes.dart';
import 'package:flutter_meedu/router.dart' as router;

class AtomsCommon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  final _icons = <String, IconData>{
    'accessibility': Icons.accessibility,
    'acountCircle': Icons.account_circle,
    'alternateEmail': Icons.alternate_email,
    'email': Icons.email,
    'lockOpen': Icons.lock_open,
    'lock': Icons.lock,
    'visibility': Icons.visibility,
    'visibilityOff': Icons.visibility_off,
    'notifications': Icons.notifications,
    'favorite': Icons.favorite_rounded,
    //'donut_large'   : Icons.donut_large,
    //'inputs'        : Icons.input,
    //'tune'          : Icons.tune,
  };

  Icon getIcon(String nombreIcono) {
    return Icon(_icons[nombreIcono]);
  }

  Widget circleAvatar() {
    return CircleAvatar(
      radius: 50.0,
      backgroundColor: Colors.white10,
      backgroundImage: AssetImage('assets/Imagen3.png'),
    );
  }

  Widget logo() {
    return Center(
      child: FadeInImage(
        placeholder: AssetImage('assets/Imagen3.png'),
        width: 180,
        image: AssetImage('assets/Imagen3.png'),
      ),
    );
  }

  Widget textTitleRegister(String text) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        //fontWeight: FontWeight.bold,
        fontFamily: 'Monserrat',
        fontSize: 28,
        color: Colors.teal[800],
      ),
    );
  }

  Widget textTitle(String text) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        //fontWeight: FontWeight.bold,
        fontFamily: 'Monserrat',
        fontSize: 22,
        color: Colors.teal[800],
      ),
    );
  }

  Widget textSubtitle(String text) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Monserrat',
        fontSize: 18,
        color: Colors.teal[800],
      ),
    );
  }

  Widget textRegular(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'PTSans',
        fontSize: 18.0,
      ),
    );
  }

  Widget textFieldRegistro(bool autofocus, bool obscure, String hintText,
      String labelText, String sufixIcon, String icon) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: autofocus,
      obscureText: obscure,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: hintText,
        labelText: labelText,
        suffixIcon: getIcon(sufixIcon),
        icon: getIcon(icon),
      ),
    );
  }

  Widget buttomSend(String texto, String page) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: ElevatedButton(
        onPressed: () => router.pushNamed(page),
        child: Text(texto),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget buttomAppbBar(String icon) {
    return Container(
        child: IconButton(
      onPressed: () {},
      icon: getIcon(icon),
    ));
  }
}
