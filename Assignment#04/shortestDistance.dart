import 'dart:math';

num distance(List<num> coord1, List<num> coord2) {
  const earthRadius = 6378;
  num lat1 = coord1[0] * pi / 180;
  num long1 = coord1[1] * pi / 180;
  num lat2 = coord2[0] * pi / 180;
  num long2 = coord2[1] * pi / 180;

  num tlat = lat2 - lat1;
  num tlong = long2 - long1;

  num a = sin(tlat / 2) * sin(tlat / 2) +
      cos(lat1) * cos(lat2) * sin(tlong / 2) * sin(tlong / 2);
  num b = 2 * atan2(sqrt(a), sqrt(1 - a));
  num distance = earthRadius * b;
  return distance;
}

void main() {
  Map<String, List<double>> cityCoordinates = {
    "Karachi": [25.1933896, 66.5950172],
    "Quetta": [30.1800523, 66.8786047],
    "Peshawar": [33.977545, 71.2852867],
    "Lahore": [31.4832209, 74.0542048],
    "Islamabad": [33.6163723, 72.8059243]
  };

  String starting = "Peshawar";
  String ending = "Karachi";

  num shortestDistance =
      distance(cityCoordinates[starting]!, cityCoordinates[ending]!);
  print(
      "The Shortest Distance from $start to $end is: ${shortestDistance.toStringAsFixed(4)}Km");
}
