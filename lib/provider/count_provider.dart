import 'package:flutter/material.dart';

//changenotifier acts as : setstate
class CountProvider with ChangeNotifier{
  int _count=50;
  // below is the value that goes in another function

  //This line defines a getter method named count. (get)
  // Getters are used to retrieve the value of a private variable.
  // In this case, the getter returns the value of _count. This allows
  // other parts of the code to access _count without directly modifying it.

  int get count => _count;

  void setCount(){
    _count++;
    notifyListeners();
  }
}