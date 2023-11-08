import 'package:flutter/material.dart';

class TestProvider extends ChangeNotifier {
  TextEditingController fieldcontroller = TextEditingController();
  String value = '';
  adder() {
    value = fieldcontroller.text;
    notifyListeners();
  }
}
