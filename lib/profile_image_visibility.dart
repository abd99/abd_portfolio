import 'package:flutter/material.dart';

class ProfileImageVisibility extends ChangeNotifier {
  bool _isVisible = true;
  bool get isImageVisible => _isVisible;

  void setVisibilityTrue() {
    _isVisible = true;
    notifyListeners();
  }

  void setVisibilityFalse() {
    _isVisible = false;
    notifyListeners();
  }
}
