import 'package:flutter/material.dart';
import 'roll_dice.dart';

void main() {
  runApp(const mainPage());
}

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: rollDice(),
      ),
    );
  }
}