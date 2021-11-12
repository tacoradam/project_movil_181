import 'package:flutter/material.dart';
import 'package:movil181/app/ui/widgets/app_bar.dart';
import 'package:movil181/app/ui/widgets/button_navigation.dart';
import 'package:movil181/app/ui/widgets/categories_slider.dart';
import 'package:movil181/app/ui/widgets/swiper_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
