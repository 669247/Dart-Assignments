void main() {
  List<Map<String, dynamic>> productList = [
    {"Name": "Eva Canola oil", "Price": 4185, "Quantity": 1},
    {"Name": "Chocolicious", "Price": 240, "Quantity": 4},
    {"Name": "Snickers", "Price": 190, "Quantity": 5},
    {"Name": "Olpers", "Price": 240, "Quantity": 12},
    {"Name": "Mars", "Price": 190, "Quantity": 4},
    {"Name": "Dawn Bread", "Price": 110, "Quantity": 2},
    {"Name": "Walls Feast", "Price": 90, "Quantity": 5}
  ];

  productList.sort((a, b) =>
      (b["Price"] * b["Quantity"]).compareTo(a["Price"] * a["Quantity"]));
  for (Map<String, dynamic> products in productList) {
    int productTotal = products["Price"] * products["Quantity"];
    
    print("");
    print(" Name: ${products["Name"]}");
    print(" Price: ${products["Price"]}");
    print(" Quantity: ${products["Quantity"]}");
    print(" Total: $productTotal");
  }
}
