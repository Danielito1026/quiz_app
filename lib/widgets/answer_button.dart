import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
    this.isActive = false
  });

  final String answerText;
  final void Function() onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 18),
        textStyle: TextStyle(fontSize: 18, fontWeight: isActive? const FontWeight(600): const FontWeight(400) ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: isActive ? const Color.fromARGB(255, 25, 110, 179) : Colors.black26,
      ),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
