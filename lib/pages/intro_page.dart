// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.only(left:80, right: 80, bottom: 40, top: 160),
            child: Image.asset('lib/images/avocado.png'),
          ),

          // deliver groceries text
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries at your doorstep',
              textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),

          // fresh items everyday
          Text(
            'Fresh items everyday',
          ),

          // get started button
          
        ],
     ),
   );
 }
}