import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 1;

  void rollDice() {
    setState(() {
      activeDiceImage = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceImage.png',
          width: MediaQuery.of(context).size.width * 0.4,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(30),
            foregroundColor: Colors.white,
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
