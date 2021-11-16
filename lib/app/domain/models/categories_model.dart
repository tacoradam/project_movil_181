// To parse this JSON data, do
//
//     final categorias = categoriasFromMap(jsonString);

import 'dart:convert';

import 'package:movil181/app/domain/models/models.dart';

class Categorias {
  Categorias(
      {required this.imagen, required this.tipo, this.nombre, this.store});

  String imagen;
  bool tipo;
  String? nombre;
  Stores? store;

  factory Categorias.fromJson(String str) =>
      Categorias.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Categorias.fromMap(Map<String, dynamic> json) => Categorias(
        imagen: json["imagen"],
        tipo: json["tipo"],
        //store: Stores.fromMap(json["store"]) ,
      );

  Map<String, dynamic> toMap() => {
        "imagen": imagen,
        "tipo": tipo,
      };
}
