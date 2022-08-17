import 'package:flutter/material.dart';

class HomeAppBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  static const List<String> _items = <String>[
    'Home',
    'Services',
    'Projects',
    'Testimony',
    'About'
  ];

  //
  // Getters
  //
  int get currentIndex => _currentIndex;
  List<String> get items => <String>[..._items];

  onIndexChange(int value) {
    _currentIndex = value;
    notifyListeners();
  }
}
