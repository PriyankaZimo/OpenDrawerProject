import 'dart:core';

import 'package:flutter/cupertino.dart';

class ProviderPage extends ChangeNotifier{
  double xOffset=0;
  double yOffset=0;
  double scaleFactor=1;
  bool isDrawerOpen=false;
  show(){
    xOffset=0;
    yOffset=0;
    scaleFactor=1;
    isDrawerOpen=false;
    notifyListeners();
  }
  display(){
    xOffset=230;
    yOffset=150;
    scaleFactor=0.6;
    isDrawerOpen=true;
    notifyListeners();
  }
}