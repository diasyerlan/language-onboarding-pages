import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Lottie.network(
              'https://lottie.host/c3ec63cd-ad5e-4d6f-a37d-1aee3868299b/GHkgw2Nob2.json'),
          Column(
            children: [
              Text(
                "Откройте новые горизонты с EngliPro",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Наслаждайтесь учебой и достигайте новых возможностей, изучая английский с нами",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
