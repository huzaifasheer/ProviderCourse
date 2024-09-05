import 'package:flutter/material.dart';

class FavouriteItemProvider with ChangeNotifier {
  final List<int> _list = [];
  List<int> get list => _list;

  void addToTheList(int value) {
    _list.add(value);
    notifyListeners();
  }

  void removeFromThelist(int value) {
    _list.remove(value);
    notifyListeners();
  }
}
