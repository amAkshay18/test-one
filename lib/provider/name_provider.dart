import 'package:flutter/material.dart';

class NameProvider with ChangeNotifier {
  String _firstName = '';
  String _lastName = '';

  String get firstName => _firstName;
  String get lastName => _lastName;

  void setFirstName(String name) {
    _firstName = name;
    notifyListeners();
  }

  void setLastName(String name) {
    _lastName = name;
    notifyListeners();
  }
}
