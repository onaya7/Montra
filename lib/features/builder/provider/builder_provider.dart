//  This file contains the Provider classes for state management.

import 'package:flutter/material.dart';

class BuilderProvider extends ChangeNotifier {
  BuilderProvider();

  // setters
  int _isSelected = 0;

  // getters
  int get isSelected => _isSelected;

  void select(int index) {
    _isSelected = index;
    notifyListeners();
  }
}
