import 'package:flutter_bloc/flutter_bloc.dart';

import 'calculator_event.dart';
import 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    on<CalculatorPerformKeyEvent>(onCalculatorPerformKey);
  }

  Future<void> onCalculatorPerformKey(CalculatorPerformKeyEvent event, Emitter<CalculatorState> emitter) async {
    final newTextViewInput = "${state.textViewInput}${event.keyInput}";
    emitter(state.copyWith(textViewInput: newTextViewInput));
  }
}