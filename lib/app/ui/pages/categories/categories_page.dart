import 'package:flutter/material.dart';
import 'package:movil181/app/ui/widgets/app_bar.dart';
import 'package:movil181/app/ui/widgets/button_navigation.dart';
import 'package:movil181/app/ui/widgets/categories_slider.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buttonNavigation = ButtonNavigation;
    return Scaffold(
      appBar: AppBarGeneral().appBarG(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            SwiperCards().categoriesSlider(context, 'Productos', 1),
            SwiperCards().categoriesSlider(context, 'Servicios', 2),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: ButtonNavigation().bottomNavigation(),
    );
  }
}
