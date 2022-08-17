import 'dart:developer';

import 'package:flutter/material.dart';

import '../enums/project_type_enum.dart';
import '../models/project.dart';

class ProjectProvider extends ChangeNotifier {
  int _currentIndex = 0;
  static const List<String> _tabs = <String>[
    'Recent',
    'Mobile',
    'Website',
    'Desktop',
  ];

  //
  // Getters
  //
  int get currentIndex => _currentIndex;
  List<String> get tabs => <String>[..._tabs];

  onIndexChange(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  //
  // FIREBASE
  //
  final List<Project> _projects = <Project>[
    Project(
      '1',
      'SafarKar - Travel and Explore the PAKISTAN',
      ProjectTyepEnum.mobileApp,
      DateTime.now(),
    ),
    Project(
      '2',
      'Review App',
      ProjectTyepEnum.mobileApp,
      DateTime.now(),
    ),
    Project(
      '3',
      'Sellout Website',
      ProjectTyepEnum.website,
      DateTime.now(),
    ),
    Project(
      '4',
      'Point of sale',
      ProjectTyepEnum.desktop,
      DateTime.now(),
    ),
    Project(
      '5',
      'Sellout App',
      ProjectTyepEnum.mobileApp,
      DateTime.now(),
    ),
    Project(
      '6',
      'Muu Wallet App',
      ProjectTyepEnum.mobileApp,
      DateTime.now(),
    ),
    Project(
      '7',
      'Salamgram App',
      ProjectTyepEnum.mobileApp,
      DateTime.now(),
    ),
    Project(
      '8',
      'Salamgram Website',
      ProjectTyepEnum.website,
      DateTime.now(),
    ),
  ];

  List<Project> get projects => <Project>[..._projects];

  List<Project> filteredProject() {
    List<Project> temp = <Project>[];
    if (_currentIndex == 0) return _projects;
    for (Project element in _projects) {
      if (_currentIndex == 1 && ProjectTyepEnum.mobileApp == element.type) {
        temp.add(element);
      } else if (_currentIndex == 2 &&
          ProjectTyepEnum.website == element.type) {
        temp.add(element);
      } else if (_currentIndex == 3 &&
          ProjectTyepEnum.desktop == element.type) {
        temp.add(element);
      }
    }
    return temp;
  }
}
