// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class Count with ChangeNotifier {

  //  private variables
  int _count = 0;

  // Provider getters 
  get show_counter_value => _count.toString();

  //  setters
  void increment() {
    _count++;
    notifyListeners();
  }

  void reset() {
    _count = -1;
    notifyListeners();
  }
}