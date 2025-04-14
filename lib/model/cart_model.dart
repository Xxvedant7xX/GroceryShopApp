import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {

//list of items on sale
final List _shopItems = [
  // itemName, itemPrice, imagePath, Color 
  [ "Avocado", "200", "lib/images/avocado.png", Colors.green],
  [ "Banana", "70", "lib/images/banana.png", Colors.yellow],
  [ "Chicken", "700", "lib/images/chicken.png", Colors.brown],
  [ "Water", "30", "lib/images/water.png", Colors.lightBlue],
];

get shopItems => _shopItems;
}