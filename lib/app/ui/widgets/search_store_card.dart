import 'package:flutter/material.dart';

class SearchStoreCard extends StatelessWidget {
  const SearchStoreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.teal.withAlpha(15),
          width: size.width * 0.9,
          height: 130,
          child: Row(
            children: [
              SizedBox(width: 5),
              _cardImage(imagen: ''),
              //SizedBox(width: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Nombre: xxxxxxx hola',
                      textAlign: TextAlign.left,
                      style: textTheme.headline6,
                      maxLines: 3,
                    ),
                    Text(
                      'Dirección: xxxxxxxx',
                      textAlign: TextAlign.left,
                      style: textTheme.subtitle1,
                      //TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Contacto: xxxxxxxx',
                      textAlign: TextAlign.left,
                      style: textTheme.subtitle1,
                      //TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _cardImage extends StatelessWidget {
  final String imagen;

  const _cardImage({Key? key, required this.imagen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //width: 140,
        height: 200,
        //color: Colors.green,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.png'),
              image: NetworkImage('https://via.placeholder.com/150x180'),
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ]));
  }
}
