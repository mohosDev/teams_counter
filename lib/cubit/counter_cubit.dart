import 'package:counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamAIncrement(int buttonNumber) {
    teamAPoints += buttonNumber;
    emit(CounterAIncrementState());
  }

  void teamBIncrement(int buttonNumber) {
    teamAPoints += buttonNumber;
    emit(CounterBIncrementState());
  }

  void teamIncrement({required String teamName, required int buttonNumber}) {
    teamAPoints = teamName == "A" ? teamAPoints += buttonNumber : teamAPoints;
    emit(CounterAIncrementState());
    teamBPoints = teamName == "B" ? teamBPoints += buttonNumber : teamBPoints;
    emit(CounterBIncrementState());
  }

  void resetCounter() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }
}
