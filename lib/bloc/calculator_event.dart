abstract class CalculatorEvent {}

class CalculatorPerformKeyEvent extends CalculatorEvent {
  final String keyInput;

  CalculatorPerformKeyEvent(this.keyInput);
}