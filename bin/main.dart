void main() {
 
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0},
  ];
  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);

  double discount = 0.1;
  applyPriceDiscount(fruits, discount);

  print("\nFruit Details After Applying ${discount * 100}% Discount:");
  displayFruitDetails(fruits);
}


void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print("Name: ${fruit["name"]}, Color: ${fruit["color"]}, Price: \$${fruit["price"]}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discount) {
  for (var fruit in fruits) {
    fruit["price"] = (fruit["price"] as double) * (1 - discount);
  }
}
