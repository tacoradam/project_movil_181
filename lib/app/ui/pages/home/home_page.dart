import 'package:flutter/material.dart';
import 'package:movil181/app/data/data_source/remote/categories_service.dart';
import 'package:movil181/app/ui/pages/loading_screen/loading_screen.dart';
import 'package:movil181/app/ui/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriesService = Provider.of<CategoriesService>(context);
    //print(categoriesService.listaCategorias);
    if (categoriesService.isLoading) return LoadingScreen();

    return Scaffold(
      appBar: AppBarGeneral().appBarG(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Promociones",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Monserrat',
                        fontSize: 24,
                        color: Colors.teal[800],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SwiperCard().swiperCards(context),
                ],
              ),
            ),
            SizedBox(height: 15),
            CategoriasSlider('Productos', listCat: categoriesService.productos),
            CategoriasSlider('Servicios', listCat: categoriesService.servicios),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: ButtonNavigation().bottomNavigation(),
    );
  }
}
