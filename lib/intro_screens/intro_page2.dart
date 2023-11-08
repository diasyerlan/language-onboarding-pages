import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.deepPurple[100],
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Lottie.network(
                'https://lottie.host/6f2d2d26-fcf3-4b24-876a-6bfba77885dc/bstmNXzZKk.json'),
            Column(
              children: [
                Text(
                  "Английский на вашем уровне, вашим путем",
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Наши персонализированные уроки и задания помогут вам достичь успеха в изучении английского",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ));
  }
}
