import 'package:flutter/material.dart';
import 'package:movil181/app/data/data_source/remote/services.dart';
import 'package:movil181/app/ui/widgets/app_bar.dart';
import 'package:movil181/app/ui/widgets/button_navigation.dart';
import 'package:movil181/app/ui/widgets/tiendas_slider.dart';
import 'package:provider/provider.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storesService = Provider.of<StoresService>(context);
    var buttonNavigation = ButtonNavigation;
    return Scaffold(
      appBar: AppBarGeneral().appBarG(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            TiendasSlider('tituloCategoria',
                listTiendas: storesService.listaTiendas)
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: ButtonNavigation(index: 1).bottomNavigation(),
    );
  }
}
