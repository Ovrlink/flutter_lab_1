import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.bluegradient({super.key})
      : color1 = const Color.fromARGB(255, 197, 178, 241),
        color2 = const Color.fromARGB(255, 45, 7, 98);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
