import 'package:flutter/material.dart';
import 'package:movil181/app/ui/widgets/list_image_services.dart';
import 'package:movil181/app/ui/widgets/list_img_categories.dart';

class SwiperCards extends StatelessWidget {
  const SwiperCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget categoriesSlider(BuildContext context, String title, int opt) {
    if (opt == 1) {
      return Container(
          width: double.infinity,
          height: 210,
          //color: Colors.blueAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Monserrat',
                    fontSize: 24,
                    color: Colors.teal[800],
                  ),
                ),
              ),
              Expanded(
                child: ListaImgCategories(),
              ),
            ],
          ));
    } else if (opt == 2) {
      return Container(
          width: double.infinity,
          height: 210,
          //color: Colors.blueAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Monserrat',
                      fontSize: 24,
                      color: Colors.teal[800],
                    ),
                  )),
              Expanded(
                child: ListaImagenesServicios(),
              ),
            ],
          ));
    } else {
      return Text(
        "No existe",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Monserrat',
          fontSize: 24,
          color: Colors.teal[800],
        ),
      );
      ;
    }
  }
}
