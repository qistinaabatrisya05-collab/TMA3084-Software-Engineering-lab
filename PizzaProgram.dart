import 'dart:io';

void main() {
  String continueOrder = "yes";

  print("Pizza Price:");
  print("Small: 5 USD");
  print("Medium: 7 USD");
  print("Large: 10 USD");

  while (continueOrder == "yes") {
    print("\nEnter pizza size (small, medium, large):");
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
        print("Invalid pizza size!");
        continue;
    }

    print("Enter quantity:");
    int quantity = int.parse(stdin.readLineSync()!);

    int total = price * quantity;

    print("Total Payment: \$${total}");

    print("\nDo you want to order again? (yes/no)");
    continueOrder = stdin.readLineSync()!.toLowerCase();
  }

  print("\nThank you for ordering!");
}
