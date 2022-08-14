import 'dart:io';
import 'dart:math';

import 'package:app_localizacao/models/place.dart';
import 'package:flutter/cupertino.dart';

class GreatPlaces with ChangeNotifier {
  final List<Place> _itens = [];

  List<Place> get items {
    return [..._itens];
  }

  int get itemsCount {
    return _itens.length;
  }

  Place itemByIndex(int index) {
    return _itens[index];
  }

  var loc = PlaceLocation(latitude: 5, longitude: 5);
  void addPlace(String title, File image) {
    final newPlace = Place(
      id: Random().nextDouble().toString(),
      title: title,
      image: image,
      location: loc,
    );

    _itens.add(newPlace);
    notifyListeners();
  }
}
