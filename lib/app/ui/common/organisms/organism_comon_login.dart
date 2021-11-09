import 'package:flutter/material.dart';
import 'package:movil181/app/ui/common/molecules/molecules_common_login.dart';

class OrganismCommonLogin extends StatelessWidget {
  const OrganismCommonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget bodyLogin() {
    return SingleChildScrollView(
      //controller: controller,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      child: Column(
        children: <Widget>[
          MoleculesCommonLogin().headerLogin(),
          SizedBox(height: 30),
          MoleculesCommonLogin().formLogin(),
          SizedBox(height: 20),
          MoleculesCommonLogin().footerLogin()
        ],
      ),
    );
  }
}
