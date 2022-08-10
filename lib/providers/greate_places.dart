import 'package:app_localizacao/models/place.dart';
import 'package:flutter/cupertino.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _itens = [];

  List<Place> get items {
    return [..._itens];
  }

  int get itemsCount {
    return _itens.length;
  }

  Place itemByIndex(int index) {
    return _itens[index];
  }
}
