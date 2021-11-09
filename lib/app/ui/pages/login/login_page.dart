import 'package:flutter/material.dart';
import 'package:movil181/app/ui/common/organisms/organism_comon_login.dart';
import 'package:movil181/app/ui/routes/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          OrganismCommonLogin().bodyLogin(),
        ],
      ),
    );
  }
}
