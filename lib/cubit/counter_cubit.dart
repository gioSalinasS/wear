import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => state < 10? emit(state + 1): Fluttertoast.showToast(msg: "El límite es 10");
  void decrement() => state > -10? emit(state - 1): Fluttertoast.showToast(msg: "El límite es -10");
  void refresh() => emit(0);

  
}