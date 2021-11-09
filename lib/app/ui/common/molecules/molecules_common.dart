import 'package:flutter/material.dart';
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
            true, false, 'Email', 'Email', 'email', 'alternateEmail'),
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
}
