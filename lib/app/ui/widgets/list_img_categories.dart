import 'package:flutter/material.dart';
import 'package:movil181/app/ui/widgets/imagen_slider_categories.dart';

class ListaImgCategories extends StatefulWidget {
  @override
  _ListaImgCategoriesState createState() => _ListaImgCategoriesState();
}

class _ListaImgCategoriesState extends State<ListaImgCategories> {
  List<String> _listProductos = [
    '2.png',
    '1.png',
    '3.png',
    '4.png',
    '5.png',
    '6.png',
    '7.png',
    '8.png',
    '9.png',
    '10.png',
    '11.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _listProductos.length,
      itemBuilder: (BuildContext context, int index) {
        final imag = _listProductos[index];
        return ImagenSliderCategories().imagenSliderCategories(context, imag);
      },
    );
  }
}
