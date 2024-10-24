class CalculatorState {
  final String textViewInput;
  final String textViewResult;

  CalculatorState({this.textViewInput = "", this.textViewResult = ""});

  CalculatorState copyWith({
    String? textViewInput,
    String? textViewResult,
  }) {
    return CalculatorState(
      textViewInput: textViewInput ?? this.textViewInput,
      textViewResult: textViewResult ?? this.textViewResult,
    );
  }
}
