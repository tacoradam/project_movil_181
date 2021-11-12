import 'package:flutter/material.dart';
import 'package:movil181/app/ui/routes/routes.dart';

class ImagenSliderCategories extends StatelessWidget {
  const ImagenSliderCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget imagenSliderCategories(BuildContext context, String image) {
    return Container(
      width: 150,
      height: 170,
      //color: Colors.green,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, Routes.CATEGORIAS,
                arguments: 'categoria-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                  placeholder: AssetImage('assets/no-image.png'),
                  image: AssetImage('assets/categories/$image')),
            ),
          ),
        ],
      ),
    );
  }
}
