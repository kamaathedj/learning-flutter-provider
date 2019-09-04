import 'package:flutter/widgets.dart';
import 'package:playground/src/models/counter.dart';

class CounterStore with ChangeNotifier{

  Counter _counter=Counter();
  
  int get count => _counter.count;

  void incrementInStore(){
    _counter.increment();
    notifyListeners();
  }
  void decrementInStore(){
    _counter.decrement();
    notifyListeners();
  }

}