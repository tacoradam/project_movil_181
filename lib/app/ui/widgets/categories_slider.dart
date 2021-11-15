import 'package:flutter/material.dart';
import 'package:movil181/app/domain/models/models.dart';
import 'package:movil181/app/ui/routes/routes.dart';

class CategoriasSlider extends StatelessWidget {
  final List<Categorias> listCat;

  //final Categorias categoria;
  final String tituloCategoria;

  const CategoriasSlider(this.tituloCategoria,
      {Key? key, required this.listCat})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      //color: Colors.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                tituloCategoria,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Monserrat',
                  fontSize: 24,
                  color: Colors.teal[800],
                ),
              )),
          SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listCat.length,
                itemBuilder: (BuildContext context, int index) {
                  final categ = listCat[index];
                  return _ImagenCategoria(categ.imagen, categ.nombre);
                }),
          ),
        ],
      ),
    );
  }
}

class _ImagenCategoria extends StatelessWidget {
  final String url;
  final String? title;

  const _ImagenCategoria(this.url, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 160,
      //color: Colors.green,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, Routes.CATEGORIAS,
                arguments: 'categoria-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                  placeholder: AssetImage('assets/no-image.png'),
                  image: AssetImage('assets/categories/$url')),
            ),
          ),
          // SizedBox(height: 5),
          // Text(
          //   title!,
          //   maxLines: 1,
          //   overflow: TextOverflow.ellipsis,
          //   textAlign: TextAlign.center,
          //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          // )
        ],
      ),
    );
  }
}
