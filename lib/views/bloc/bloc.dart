import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session10/views/bloc/event.dart';
import 'package:session10/views/bloc/state.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  int counter = 0;

  CounterBloc() : super(InitialState()) {
    on<CounterEvents>((event, emit) {
      if (event is NumberIncreaseEvent) {
        counter++;
        emit(UpdateState(counter));
      } else if (event is NumberDecreaseEvent) {
        counter--;
        emit(UpdateState(counter));
      }
    });
  }
}
