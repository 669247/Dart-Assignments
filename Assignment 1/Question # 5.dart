import 'dart:io';
import 'dart:math';

void main() {
  print("Enter Temperature in Celsius: ");
  double? temperature_In_Celsius = double.parse(stdin.readLineSync()!);
  double? celsius_To_Fahrenheit = (9 / 5) * temperature_In_Celsius + 32;
  print("Temperature in Celsius is : $temperature_In_Celsius");
  print("Temperature in Fahrenheit is : $celsius_To_Fahrenheit");
}
