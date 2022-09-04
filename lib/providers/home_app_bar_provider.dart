import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeAppBarProvider extends ChangeNotifier {
  HomeAppBarProvider() {
    _itemPositionsListener.itemPositions.addListener(() {
      final List<int> page = _itemPositionsListener.itemPositions.value
          .where((ItemPosition element) {
            final bool top = element.itemLeadingEdge >= 0;
            final bool bottom = element.itemTrailingEdge <= 1;
            return top && bottom;
          })
          .map((ItemPosition e) => e.index)
          .toList();
      if (page.isNotEmpty) _shift(page[0]);
    });
  }
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
  ItemScrollController get itemScrollController => _itemScrollController;
  ItemPositionsListener get itemPositionsListener => _itemPositionsListener;
  List<String> get items => <String>[..._items];

  _shift(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  onIndexChange(int value) {
    _itemScrollController.scrollTo(
      index: value,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
    );
    _currentIndex = value;
    notifyListeners();
  }

  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener =
      ItemPositionsListener.create();
  int _currentIndex = 0;
}
