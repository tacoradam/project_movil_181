import 'package:flutter/material.dart';
import 'package:movil181/app/ui/common/atoms/atoms_common.dart';
import 'package:movil181/app/ui/common/atoms/atoms_common_login.dart';
import 'package:movil181/app/ui/common/atoms/atoms_common_textfield.dart';
import 'package:movil181/app/ui/routes/routes.dart';
import 'package:movil181/app/utils/validator_form.dart';

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
        SizedBox(height: 20),
        AtomsCommon().textTitleRegister('Login')
      ],
    );
  }

  Widget formLogin() {
    return Form(
      child: Column(
        children: <Widget>[
          AtomsCommonTextfiled(
            label: 'Email',
            onChanged: (text) {},
            isPassword: false,
            icon: Icon(Icons.alternate_email),
            icon2: Icons.email,
            validator: (text) {
              if (text == null) return null;
              return ValidatorForm().isValidEmail(text)
                  ? null
                  : "Correo invalido";
            },
          ),
          SizedBox(height: 12),
          AtomsCommonTextfiled(
            label: 'Contraseña',
            onChanged: (text) {},
            isPassword: true,
            icon: Icon(Icons.lock),
          ),
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
            "assets/google_logo.png", 'Acceder con google', Routes.REGISTER),
        AtomsCommonLogin().buttonLogin(
            'assets/facebook.png', 'Acceder con facebook', Routes.REGISTER),
        AtomsCommonLogin().textButton('Registrarse', Routes.REGISTER),
      ],
    );
  }
}
