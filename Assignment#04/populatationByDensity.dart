void main() {
  Map<String, List<double>> population = {
    "Pakistan": [216565318, 796095],
    "China": [1397715000, 9596960],
    "USA": [328239523, 9833517],
    "Russia": [144373535, 17098242],
    "Singapore": [5703569, 719]
  };

  List<MapEntry<String, double>> densityList = [];

  for (String countries in population.keys) {
    double density = population[countries]![0] / population[countries]![1];
    densityList.add(MapEntry(countries, density));
  }
  densityList.sort((a, b) => b.value.compareTo(a.value));
  print("Population by Density:");
  for (int i = 0; i < 5; i++) {
    String country = densityList[i].key;
    double density = densityList[i].value;
    
    print("");
    print("Country Name: $country ");
    print("Density: ${density.toStringAsFixed(2)}/Km²");
  }
}
