import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movil181/app/domain/models/models.dart';

class StoresService extends ChangeNotifier {
  final String _baseUrl = 'mi-barrio-177fd-default-rtdb.firebaseio.com';
  final List<Stores> listaTiendas = [];

  bool isLoading = true;

  StoresService() {
    this.loadStores();
  }

  Future<List<Stores>> loadStores() async {
    final url = Uri.https(_baseUrl, '/store.json');
    final resp = await http.get(url);
    final Map<String, dynamic> storesMap = json.decode(resp.body);
    print(storesMap);

    storesMap.forEach((key, value) {
      final tempStore = Stores.fromMap(value);
      tempStore.nittienda.nit = key;
      this.listaTiendas.add(tempStore);
    });
    print(listaTiendas);
    this.isLoading = false;
    notifyListeners();
    return this.listaTiendas;
  }
}
