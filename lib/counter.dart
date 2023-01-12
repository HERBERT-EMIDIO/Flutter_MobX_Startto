import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  //1. forma de fazer: Estado que será modificado --> observable
  /*final _count = Observable(0);
  int get count => _count.value;*/

  //2. forma de fazer: @Observer
  @observable
  int count = 0;

//1. forma de modificar o estado --> ação = action increment
  /*late Action increment = Action(_increment); 
  void _increment(){
  _count.value++;}*/

  //2. forma de modificar com @action void increment(){count++;}
  @action
  void increment() => count++;
  //{count++;}

}
