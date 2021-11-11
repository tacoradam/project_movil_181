import 'package:flutter/material.dart';
import 'package:movil181/app/ui/common/molecules/molecules_common.dart';
import 'package:movil181/app/ui/common/organisms/organisms_common.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MoleculesCommon().appBarGeneral('Hola, David Bello'),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            OrganismsCommon().categoriesSlider(context, 'Productos', 1),
            OrganismsCommon().categoriesSlider(context, 'Servicios', 2),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: MoleculesCommon().bottomNavigation(),
    );
  }
}
