import 'package:flutter/material.dart';

class BottomProvider extends ChangeNotifier
{
  int i = 0;

  void changeindex(int index)
  {
    i=index;
    notifyListeners();
  }
}