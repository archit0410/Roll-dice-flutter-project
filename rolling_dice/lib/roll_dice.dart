import 'package:flutter/material.dart';
import 'dart:math';

class rollDice extends StatefulWidget {
  const rollDice({super.key});

  @override
  State<rollDice> createState() => _rollDiceState();
}

class _rollDiceState extends State<rollDice> {
  var activeImage = 'lib/diceImages/dice-six-faces-1.png';

  void RollDice() {
    var diceNumber = Random().nextInt(6) + 1;
    setState(() {
      activeImage = 'lib/diceImages/dice-six-faces-$diceNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 200,
          ),
          Image.asset(
            activeImage,
            width: 200,
          ),
          const SizedBox(
            height: 200,
          ),
          ElevatedButton(
            onPressed: RollDice,
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: const Text('Roll Dice',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w300)),
          )
        ],
      ),
    );
  }
}
