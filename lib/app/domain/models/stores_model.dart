// To parse required this JSON data, do
//
//     final stores = storesFromMap(jsonString);

import 'dart:convert';

class Stores {
  Stores({
    required this.nitTienda,
  });

  NitTienda nitTienda;

  factory Stores.fromJson(String str) => Stores.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Stores.fromMap(Map<String, dynamic> json) => Stores(
        nitTienda: NitTienda.fromMap(json["nit_tienda"]),
      );

  Map<String, dynamic> toMap() => {
        "nit_tienda": nitTienda.toMap(),
      };
}

class NitTienda {
  NitTienda({
    required this.categoria,
    required this.descripcion,
    required this.direccion,
    required this.imagen,
    required this.nombre,
    required this.productos,
    required this.telefono,
    required this.tipo,
  });

  String categoria;
  String descripcion;
  String direccion;
  String imagen;
  String nombre;
  Productos productos;
  int telefono;
  bool tipo;

  factory NitTienda.fromJson(String str) => NitTienda.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NitTienda.fromMap(Map<String, dynamic> json) => NitTienda(
        categoria: json["categoria"],
        descripcion: json["descripcion"],
        direccion: json["direccion"],
        imagen: json["imagen"],
        nombre: json["nombre"],
        productos: Productos.fromMap(json["productos"]),
        telefono: json["telefono"],
        tipo: json["tipo"],
      );

  Map<String, dynamic> toMap() => {
        "categoria": categoria,
        "descripcion": descripcion,
        "direccion": direccion,
        "imagen": imagen,
        "nombre": nombre,
        "productos": productos.toMap(),
        "telefono": telefono,
        "tipo": tipo,
      };
}

class Productos {
  Productos({
    required this.ref,
  });

  Ref ref;

  factory Productos.fromJson(String str) => Productos.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Productos.fromMap(Map<String, dynamic> json) => Productos(
        ref: Ref.fromMap(json["ref"]),
      );

  Map<String, dynamic> toMap() => {
        "ref": ref.toMap(),
      };
}

class Ref {
  Ref({
    required this.descripcion,
    required this.disponible,
    required this.imagen,
    required this.nombre,
    required this.precio,
  });

  String descripcion;
  bool disponible;
  String imagen;
  String nombre;
  int precio;

  factory Ref.fromJson(String str) => Ref.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Ref.fromMap(Map<String, dynamic> json) => Ref(
        descripcion: json["descripcion"],
        disponible: json["disponible"],
        imagen: json["imagen"],
        nombre: json["nombre"],
        precio: json["precio"],
      );

  Map<String, dynamic> toMap() => {
        "descripcion": descripcion,
        "disponible": disponible,
        "imagen": imagen,
        "nombre": nombre,
        "precio": precio,
      };
}
