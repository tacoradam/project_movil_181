// To parse required this JSON data, do
//
//     final stores = storesFromMap(jsonString);

import 'dart:convert';

class Productos {
  Productos({
    required this.descripcion,
    required this.disponibilidad,
    required this.imagen,
    required this.precio,
    required this.referencia,
  });

  String descripcion;
  bool disponibilidad;
  String imagen;
  int precio;
  String referencia;

  factory Productos.fromJson(String str) => Productos.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Productos.fromMap(Map<String, dynamic> json) => Productos(
        descripcion: json["descripcion"],
        disponibilidad: json["disponibilidad"],
        imagen: json["imagen"],
        precio: json["precio"].toInt(),
        referencia: json["referencia"],
      );

  Map<String, dynamic> toMap() => {
        "descripcion": descripcion,
        "disponibilidad": disponibilidad,
        "imagen": imagen,
        "precio": precio,
        "referencia": referencia,
      };
}
