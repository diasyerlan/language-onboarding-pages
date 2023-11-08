import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Column(
        children: [
          SizedBox(height: 100),
          Lottie.network(
              'https://lottie.host/4a1a8d71-1c53-42a5-ae66-a0942c9773f1/agYzZ2lLeR.json'),
          Column(
            children: [
              Text(
                "Добро пожаловать в EngliPro!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Изучайте английский с удовольствием и достигайте своих целей вместе с нами",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
