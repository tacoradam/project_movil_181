import 'package:flutter/material.dart';
import 'package:movil181/app/ui/widgets/imagen_slider_categories.dart';

class ListaImagenesServicios extends StatefulWidget {
  @override
  _ListaImagenesServiciosState createState() => _ListaImagenesServiciosState();
}

class _ListaImagenesServiciosState extends State<ListaImagenesServicios> {
  List<String> _listServicios = [
    '12.png',
    '13.png',
    '14.png',
    '15.png',
    '16.png',
    '17.png',
    '18.png',
    '19.png',
    '20.png',
    '21.png',
    '22.png',
    '23.png'
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
      itemCount: _listServicios.length,
      itemBuilder: (BuildContext context, int index) {
        final imag = _listServicios[index];

        return ImagenSliderCategories().imagenSliderCategories(context, imag);
      },
    );
  }
}
