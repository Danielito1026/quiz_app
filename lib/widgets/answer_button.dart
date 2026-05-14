import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
    this.isActive = false,
    this.showResultStyle = false,
    this.isRight = false,
  });

  final String answerText;
  final void Function() onTap;
  final bool isActive;
  final bool showResultStyle;
  final bool isRight;

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 18),
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: isActive ? const FontWeight(600) : const FontWeight(400),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: isActive
            ? showResultStyle
                  ? isRight
                        ? const Color.fromARGB(190, 76, 175, 79)
                        : const Color.fromARGB(190, 244, 67, 54)
                  : const Color.fromARGB(255, 25, 110, 179)
            : Colors.black26,
      ),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
