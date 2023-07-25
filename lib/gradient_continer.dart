import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromARGB(255, 79, 38, 152), Colors.deepPurpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
