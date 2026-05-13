import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/gradient_container.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        gradientColors: [Colors.black, Colors.deepPurple],
        gradientBegin: AlignmentGeometry.topLeft,
        gradientEnd: AlignmentGeometry.bottomRight,
        child: Column(
          spacing: 10.0,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/quiz-logo.png', width: 300),
            Center(
              child: Text(
                'Learn Flutter the fun way!',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight(600)),
              ),
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              icon: Icon(Icons.play_arrow, color: Colors.white,),
              label: Text('Start Quiz', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
