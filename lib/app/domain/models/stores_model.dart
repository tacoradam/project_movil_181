// To parse required this JSON data, do
//
//     final stores = storesFromMap(jsonString);

import 'dart:convert';

import 'models.dart';

class Stores {
  Stores({
    required this.descripcion,
    required this.direccion,
    required this.imagen,
    required this.nombre,
    required this.productos,
    required this.telefono,
    required this.tipo,
    this.nit,
  });

  String descripcion;
  String direccion;
  String imagen;
  String nombre;
  Productos productos;
  int telefono;
  String tipo;
  String? nit;

  factory Stores.fromJson(String str) => Stores.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Stores.fromMap(Map<String, dynamic> json) => Stores(
        descripcion: json["descripcion"],
        direccion: json["direccion"],
        imagen: json["imagen"],
        nombre: json["nombre"],
        productos: Productos.fromMap(json["productos"]),
        telefono: json["telefono"],
        tipo: json["tipo"],
      );

  Map<String, dynamic> toMap() => {
        "descripcion": descripcion,
        "direccion": direccion,
        "imagen": imagen,
        "nombre": nombre,
        "productos": productos.toMap(),
        "telefono": telefono,
        "tipo": tipo,
      };
}

// class Productos {
//   Productos({
//     required this.descripcion,
//     required this.disponibilidad,
//     required this.imagen,
//     required this.precio,
//     required this.referencia,
//   });

//   String descripcion;
//   bool disponibilidad;
//   String imagen;
//   int precio;
//   String referencia;

//   factory Productos.fromJson(String str) => Productos.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory Productos.fromMap(Map<String, dynamic> json) => Productos(
//         descripcion: json["descripcion"],
//         disponibilidad: json["disponibilidad"],
//         imagen: json["imagen"],
//         precio: json["precio"].toInt(),
//         referencia: json["referencia"],
//       );

//   Map<String, dynamic> toMap() => {
//         "descripcion": descripcion,
//         "disponibilidad": disponibilidad,
//         "imagen": imagen,
//         "precio": precio,
//         "referencia": referencia,
//       };
// }
