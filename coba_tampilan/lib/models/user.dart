import 'package:flutter/material.dart';

class LikeModel extends ChangeNotifier {
  int _likes = 0;

  int get likes => _likes;

  void addLike() {
    _likes++;
    notifyListeners();
  }
}
