import 'dart:io';
import 'dart:math';

void main() {
  print("Enter a positive Integer: ");
  int? positive_Integer = int.parse(stdin.readLineSync()!);
  if (positive_Integer % positive_Integer == 0) {
    print("Given number is a prime number");
  } else {
    print("It's not a prime number");
  }
}
