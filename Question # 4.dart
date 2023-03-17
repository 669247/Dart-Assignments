import 'dart:io';
import 'dart:math';

void main() {
  print("Enter Value of Base: ");
  double? base = double.parse(stdin.readLineSync()!);
  print("Enter Value of exponent: ");
  double? exponent = double.parse(stdin.readLineSync()!);
  num result = pow(base, exponent);
  print("Result is: $result");
}
