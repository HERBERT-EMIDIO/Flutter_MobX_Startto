import 'package:mobx/mobx.dart';

class Counter {

  //Estado que será modificado --> observable  //7.51
  final _count = Observable(0);

  int get count => _count.value;

//modificar o estado --> ação = action increment
  late Action increment = Action(_increment);

  void _increment() {
    _count.value++;
  }
}
