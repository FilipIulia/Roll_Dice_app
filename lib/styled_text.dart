import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  const StyledText(this.text, {super.key});

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
