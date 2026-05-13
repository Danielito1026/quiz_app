import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/gradient_container.dart';

class CheckedAnswer extends StatefulWidget {
  const CheckedAnswer({super.key});

  @override
  State<CheckedAnswer> createState() => _CheckedAnswerState();
}

class _CheckedAnswerState extends State<CheckedAnswer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => Navigator.pop(context)),
      ),
      body: SingleChildScrollView(
        child: GradientContainer(
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
                  'Checking answers!',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight(600)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
