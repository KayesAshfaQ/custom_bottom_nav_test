import 'package:flutter/foundation.dart';

class BadgeProvider extends ChangeNotifier {
  int _badge = 0;

  int get badge => _badge;

  set badge(int val) {
    _badge = val;
    notifyListeners();
  }
}
