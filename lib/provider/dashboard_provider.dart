import 'package:flutter/material.dart';

class DashboardProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  bool _isDrawerOpen = false;

  int get selectedIndex => _selectedIndex;
  bool get isDrawerOpen => _isDrawerOpen;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void setDrawerOpen(bool isOpen) {
    _isDrawerOpen = isOpen;
    notifyListeners();
  }

  double getDrawerSlide() {
    return (1 - 0.7) * selectedIndex;
  }

  double getDrawerScale() {
    return 1 - 0.3 * selectedIndex;
  }
}
