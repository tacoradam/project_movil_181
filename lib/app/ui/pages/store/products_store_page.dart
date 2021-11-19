import 'package:flutter/material.dart';
import 'package:movil181/app/ui/widgets/widgets.dart';

class ProductsStore extends StatelessWidget {
  const ProductsStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              _UbicacionYDatos(),
              SizedBox(height: 10),
              _Descripcion(),
              ProductsCard(),
              //SizedBox(height: 100),
            ])
          )
        ],
      ),
      extendBody: true,
      bottomNavigationBar: ButtonNavigation(index: 0).bottomNavigation(),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.teal,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 10),
          color: Colors.black12,
          child: Text(
            'Nombre de la Tienda',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        background: FadeInImage(
          image: NetworkImage('https://picsum.photos/400/400'),
          placeholder: AssetImage('assets/loading.gif'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _UbicacionYDatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: AssetImage('assets/mapa-dummie.jpg'),
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Direccion',
                  style: textTheme.headline5,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2),
              Text('telefono',
                  style: textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3),
              Row(
                children: [
                  Icon(Icons.link, size: 30, color: Colors.amber),
                  SizedBox(width: 10),
                  Text(
                    'www.tienda.com',
                    style: textTheme.subtitle2,
                  )
                ],
              ),
            ],
          ),
        ],
      )
    );
  }
}

class _Descripcion extends StatelessWidget {
  const _Descripcion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'Exercitation qui laborum officia non cillum excepteur dolore ullamco eu labore commodo officia anim cupidatat.',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
        maxLines: 3,
      ),
    );
  }
}
