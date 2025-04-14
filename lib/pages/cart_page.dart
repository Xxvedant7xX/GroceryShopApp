// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryshopapp/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
        body: Consumer<CartModel>(builder:(context, value, child) {
         return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text("My Cart",
            style: GoogleFonts.notoSerif(
             textStyle: const TextStyle(
             fontSize: 32,
             fontWeight: FontWeight.bold,
            color: Colors.black,
              ),
              ),
            ),
          ),
          // list of cart items
          Expanded(child: ListView.builder(
            itemCount: value.cartItems.length,
            padding: EdgeInsets.all(12),
            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  leading: Image.asset(value.cartItems[index][2],
                  ),
                  title: Text(value.cartItems[index][0]),
                  subtitle: Text( '₹' + value.cartItems[index][1]),
                  trailing: IconButton(
                    icon: Icon(Icons.cancel),
                    onPressed: () => 
                    Provider.of<CartModel>(context, listen: false)
                    .removeItemFromCart(index),
                    ),
                  ),
              ),
            );
             },
            ),
          ),

          //total + pay now
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),
                ),
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Price',
                      style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 4,),
                      Text( '₹' + value.calculateTotal(),
                      style: const TextStyle(color: Colors.white,
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                  //pay now button
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green.shade100,
                        ),
                        borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Text(
                          'Pay Now',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            ),
                                          ),
                             Icon(Icons.arrow_forward_ios,
                             size: 16,
                             color: Colors.white,
                             ),             
                       ],
                    ),
                  ),
                ],
              ),
              ),
          ),
        ],
      );
        },
        ),
    );
  }
}