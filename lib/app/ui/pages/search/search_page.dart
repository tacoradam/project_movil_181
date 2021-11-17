import 'package:flutter/material.dart';
import 'package:movil181/app/ui/widgets/widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
      ),
      bottomNavigationBar: ButtonNavigation(index: 1).bottomNavigation(),
    );
  }
}
