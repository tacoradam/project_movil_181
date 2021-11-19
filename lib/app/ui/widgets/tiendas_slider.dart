import 'package:flutter/material.dart';
import 'package:movil181/app/domain/models/models.dart';
import 'package:movil181/app/ui/routes/routes.dart';

class TiendasSlider extends StatelessWidget {
  final List<Stores> listTiendas;
  final String tituloCategoria;

  const TiendasSlider(this.tituloCategoria,
      {Key? key, required this.listTiendas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.7,
      //color: Colors.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                scrollDirection: Axis.vertical,
                itemCount: listTiendas.length,
                itemBuilder: (BuildContext context, int index) {
                  final tienda = listTiendas[index];
                  return _ImagenSlider(tienda.imagen, tienda.nombre);
                }),
          ),
        ],
      ),
    );
  }
}

class _ImagenSlider extends StatelessWidget {
  final String url;
  final String? title;

  const _ImagenSlider(this.url, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 140,
      height: 200,
      //color: Colors.green,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: <Widget>[
          _ImagenT(
            urlImagen: url,
            nombreTienda: title,
          ),
          _ImagenT(
            urlImagen: url,
            nombreTienda: title,
          )
        ],
      ),
    );
  }
}

class _ImagenT extends StatelessWidget {
  final String urlImagen;
  final String? nombreTienda;
  const _ImagenT({Key? key, required this.urlImagen, this.nombreTienda})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, Routes.STORE,
                  /*arguments: 'categoria-instance'*/),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage('assets/no-image.png'),
                  image: NetworkImage(urlImagen),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              nombreTienda!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
