import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movil181/app/domain/models/models.dart';

class CategoriesService extends ChangeNotifier {
  final String _baseUrl = 'categorias-app-default-rtdb.firebaseio.com';
  final List<Categorias> listaCategorias = [];
  final List<Categorias> productos = [];
  final List<Categorias> servicios = [];
  final List<Stores> listaTiendas = [];
  // final List<Stores> restaurantes = [];
  // final List<Stores> panaderias = [];
  // final List<Stores> farmacias = [];
  // final List<Stores> licores = [];
  // final List<Stores> minimercado = [];
  // final List<Stores> mascotas = [];
  // final List<Stores> paseadorPerros = [];
  // final List<Stores> servDomesticos = [];
  // final List<Stores> plomeria = [];
  // final List<Stores> cerrajeria = [];
  // final List<Stores> servElectricos = [];

  bool isLoading = true;

  CategoriesService() {
    loadCategories();
  }

  Future<List<Categorias>> loadCategories() async {
    final url = Uri.https(_baseUrl, '/categorias.json');
    final resp = await http.get(url);
    final Map<String, dynamic> categoriesMap = json.decode(resp.body);
    print(categoriesMap);

    categoriesMap.forEach((key, value) {
      final tempCategory = Categorias.fromMap(value);
      tempCategory.nombre = key;
      listaCategorias.add(tempCategory);
      print(tempCategory.nombre);

      //listaTiendas.add(tempCategory.store!);
      if (tempCategory.tipo == true) {
        productos.add(tempCategory);
        // if (tempCategory == "Restaurantes") {
        //   restaurantes.add(tempCategory.store!);
        // }
        // if (tempCategory == "Panaderias") {
        //   panaderias.add(tempCategory.store!);
        // }
        // if (tempCategory == "Farmacias") {
        //   farmacias.add(tempCategory.store!);
        // }
        // if (tempCategory == "Licores") {
        //   licores.add(tempCategory.store!);
        // }
        // if (tempCategory == "Minimercado") {
        //   minimercado.add(tempCategory.store!);
        // }
        // if (tempCategory == "Mascotas") {
        //   mascotas.add(tempCategory.store!);
        // }
      } else {
        servicios.add(tempCategory);
        // if (tempCategory == "Paseador de perros") {
        //   paseadorPerros.add(tempCategory.store!);
        // }
        // if (tempCategory == "Servicios domésticos") {
        //   servDomesticos.add(tempCategory.store!);
        // }
        // if (tempCategory == "Plomería") {
        //   plomeria.add(tempCategory.store!);
        // }
        // if (tempCategory == "Cerrajería") {
        //   cerrajeria.add(tempCategory.store!);
        // }
        // if (tempCategory == "Servicios eléctricos") {
        //   servElectricos.add(tempCategory.store!);
        // }
      }
    });
    isLoading = false;
    notifyListeners();
    return listaCategorias;
  }
}
