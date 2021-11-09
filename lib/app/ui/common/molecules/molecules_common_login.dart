import 'package:flutter/material.dart';
import 'package:movil181/app/ui/common/atoms/atoms_common.dart';
import 'package:movil181/app/ui/common/atoms/atoms_common_login.dart';
import 'package:movil181/app/ui/routes/routes.dart';

class MoleculesCommonLogin extends StatelessWidget {
  const MoleculesCommonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget headerLogin() {
    return Column(
      children: <Widget>[
        AtomsCommon().logo(),
        AtomsCommon().textTitle('Mi barrio store'),
        SizedBox(height: 20),
        AtomsCommon().textTitle('Login')
      ],
    );
  }

  Widget formLogin() {
    return Form(
      child: Column(
        children: <Widget>[
          AtomsCommon().textFieldRegistro(
              true, false, 'Email', 'Email', 'email', 'alternateEmail'),
          SizedBox(height: 12),
          AtomsCommon().textFieldRegistro(
              false, true, 'Contraseña', 'Contraseña', 'visibilityOff', 'lock'),
          SizedBox(height: 25),
          AtomsCommon().buttomSend('Confirmar', Routes.REGISTER),
        ],
      ),
    );
  }

  Widget footerLogin() {
    return Column(
      children: [
        AtomsCommonLogin()
            .textButton('¿Olvido su contraseña?', Routes.REGISTER),
        AtomsCommonLogin().buttonLogin(
            "assets/google_logo.png", 'Aceder con google', Routes.REGISTER),
        AtomsCommonLogin().buttonLogin(
            'assets/facebook.png', 'Aceder con facebook', Routes.REGISTER),
        AtomsCommonLogin().textButton('Registrase', Routes.REGISTER),
      ],
    );
  }
}
