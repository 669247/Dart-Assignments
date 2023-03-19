import 'dart:io';
import 'dart:math';

void main() {
  print("Enter Value of Radius: ");
  double? radius = double.parse(stdin.readLineSync()!);
  double? volume_Of_Sphere = 4 / 3 * 3.14 * pow(radius, 3);
  print("Volume of the sphere is: $volume_Of_Sphere");
  double? surface_Area_Of_Sphere = 4 * 3.14 * pow(radius, 2);
  print("Surface area of the sphere is: $surface_Area_Of_Sphere");
}
