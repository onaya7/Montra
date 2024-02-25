//  This file contains the Provider classes for state management.

import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  AuthProvider();

  // setters
  bool _isLogin = false;
  bool _isChecked = false;
  bool _isLoading = false;
  bool _isPasswordVisible = false;
  int _isSelected = 0;

  // getters
  bool get isLogin => _isLogin;
  bool get isChecked => _isChecked;
  bool get isLoading => _isLoading;
  bool get isPasswordVisible => _isPasswordVisible;
  int get isSelected => _isSelected;

  void checkbox(bool? value) {
    _isChecked = !_isChecked;
    notifyListeners();
  }

  void login() {
    _isLogin = !_isLogin;
    notifyListeners();
  }

  void loading() {
    _isLoading = true;
    notifyListeners();
  }

  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  void select(int index) {
    _isSelected = index;
    notifyListeners();
  }
}
