import 'dart:io';

void main() {
  print("Pizza Price:");
  print("Small: 5 USD, Medium: 7 USD, Large: 10 USD");

  print("\nPlease enter your pizza size (small, medium, or large):");

  String size = stdin.readLineSync()!.toLowerCase();

  int price = 0;

  switch (size) {
    case "small":
      price = 5;
      break;

    case "medium":
      price = 7;
      break;

    case "large":
      price = 10;
      break;

    default:
      print("Invalid Pizza Size!");
      return;
  }

  print("How many pizzas do you want of $size?");
  int quantity = int.parse(stdin.readLineSync()!);

  int total = price * quantity;

  print("Your Total Payment is: \$${total}");
}
