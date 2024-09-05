import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;
  get count => _count;
  void getCount() {
    _count++;
    notifyListeners();
  }
}
