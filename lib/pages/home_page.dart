// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryshopapp/components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
          // Morning Salutation
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24,),
            child: Text('Good Morning,',
            style: TextStyle(
              fontSize: 20,
            ),
            ),
          ),
          const SizedBox(height: 4),
          
          // Lets order fresh items
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text("Let's order some fresh items for you",
            style: GoogleFonts.notoSerif(
             textStyle: const TextStyle(
             fontSize: 32,
             fontWeight: FontWeight.bold,
            color: Colors.black,
              ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        
          // Divider
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
            //  thickness: 4,
            ),
          ),

           const SizedBox(height: 24),
        
          // Items + grid 
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Fresh Items',
              style: TextStyle(
                fontSize: 16,
              ),
              ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
                 itemBuilder:(context, index) {
                   return GroceryItemTile(
                    
                   );
                 },
             )
            )
          ],
        ),
      ),
    );
  }
}