import 'package:flutter/material.dart';

class SliderProvider with ChangeNotifier {
  double _sliderValue = 0.0;
  double get sliderValue => _sliderValue;

  void setSliderValue(value) {
    _sliderValue = value;
    notifyListeners();
  }
}
