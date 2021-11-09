import 'package:flutter/material.dart';
import 'package:movil181/app/ui/common/atoms/atoms_common.dart';
import 'package:movil181/app/ui/common/molecules/molecules_common.dart';
import 'package:movil181/app/ui/common/organisms/organisms_common.dart';
import 'package:flutter_meedu/router.dart' as router;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MoleculesCommon().appBarGeneral('Hola, David Bello'),
      extendBody: true,
      bottomNavigationBar: MoleculesCommon().bottomNavigation(),
    );
  }
}
