import 'package:flutter/material.dart';
import 'package:movil181/app/ui/common/atoms/atoms_common.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Center(
              child: const Text("pagina de registro"),
            ),
            const AtomsCommon().circleAvatar(),
            const AtomsCommon()
                .textTitle('Mi tienda movil 181', 'FjallaOne', 30.0),
          ],
        ));
  }
}
