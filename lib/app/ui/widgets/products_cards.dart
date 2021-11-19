import 'package:flutter/material.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 800,
      color: Colors.white,
      child: ListView.builder(
        //TODO: Traer la cantidad de items de la base de datos:
        itemCount: 5,
        itemBuilder: (_, int index) => _Card(),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0,7.5),
              blurRadius: 10,
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FadeInImage(
                  placeholder: AssetImage('assets/no-image.png'),
                  image: NetworkImage('https://picsum.photos/100/100'),
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 80,
                width: 80,
                color: Colors.grey[100],
                child: Expanded(
                  child: Center(
                    child: Text(
                      'Nombre del Producto',
                      style: TextStyle(fontSize: 15, color: Colors.grey[700], fontWeight: FontWeight.bold),
                      maxLines: 3,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 80,
                width: 80,
                color: Colors.grey[100],
                child: Row(
                  children: [
                    IconButton(
                      
                      padding: const EdgeInsets.all(1.0),
                      onPressed: (){},
                      icon: Icon(Icons.remove),
                      iconSize: 15,
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.add),
                      iconSize: 15,
                    )
                  ],
                  
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
              child: Container(
                height: 80,
                width: 80,
                color: Colors.grey[100],
              ),
            ),
          ],
        ),
        /*child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'producto.name',
                ),
                Text('producto.descripcion',
                    overflow: TextOverflow.ellipsis, maxLines: 3),
                Text(
                  'producto.precio',
                ),
              ],
            ),
            SizedBox(width: 12),
            ElevatedButton(
              onPressed: () {},
              child: Text('Agregar'),
              // (Icons.add_box_rounded),
            ),
          ],
        ),*/
      ),
    );
  }
}