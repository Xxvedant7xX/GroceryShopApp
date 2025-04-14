// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {

  final String itemName;
  final String itemPrice;
  final String itemPath;
  final color;

  const GroceryItemTile({super.key, 
  required this.itemName,
  required this.itemPrice,
  required this.itemPath,
  required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}