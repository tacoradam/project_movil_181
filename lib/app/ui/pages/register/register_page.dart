import 'package:flutter/material.dart';
import 'package:movil181/app/ui/common/atoms/atoms_common.dart';
import 'package:movil181/app/ui/common/molecules/molecules_common.dart';
import 'package:movil181/app/ui/common/organisms/organisms_common.dart';
import 'package:flutter_meedu/router.dart' as router;

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
            children: [
              OrganismsCommon().bodyRegister(),
            ],
          ),
        );
        
        /*ListView(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          children: <Widget>[
            Center(
              child: AtomsCommon()
                .textRegular("pagina de registro"),
            ),
            Divider(),
            AtomsCommon().circleAvatar(),
            AtomsCommon()
              .textTitle('Mi tienda movil 181'),
            Divider(),

            MoleculesCommon().form(),
          ],
        )*/
  }
}
