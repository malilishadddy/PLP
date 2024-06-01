import "dart:math";
import "dart:io";

double numInput() {
  print("Enter the Number for Operation:");
  double myNumber = double.parse(stdin.readLineSync()!);
  stdin.readLineSync();
  return myNumber;
}

String operandChoice() {
  print("Enter the operand e.g '+','-','/','*' ");
  String operandInput = stdin.readLineSync()!;
  stdin.readLineSync();
  return operandInput;
}

void main() {
  double num1 = numInput();
  double num2 = numInput();
  String choice = operandChoice();
  double answer = 0.0;

  if (choice == '+') {
    answer = num1 + num2;
  } else if (choice == '-') {
    answer = num1 - num2;
  } else {
    print("Invalid Output please review");
  }
  print("${num1} ${choice} ${num2} = ${answer}");
}
