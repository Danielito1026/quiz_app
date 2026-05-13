import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/constants.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/pages/checked_answer.dart';
import 'package:quiz_app/widgets/gradient_container.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widgets/group_answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  late List<QuizQuestion> shuffledQuestions;
  final Map<int, int> userAnswers = {};
  int currentIndex = 0;

  int get currentSelectedAnswer =>
      userAnswers[shuffledQuestions[currentIndex].id] ?? -1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    shuffledQuestions = List.of(questions);
    shuffledQuestions.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        gradientColors: [Colors.black, Colors.deepPurple],
        child: Padding(
          padding: const EdgeInsetsGeometry.symmetric(horizontal: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                shuffledQuestions[currentIndex].question,
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight(600),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              GroupAnswerButton(
                questionId: shuffledQuestions[currentIndex].id,
                options: shuffledQuestions[currentIndex].options,
                onSelected: (value) {
                  setState(() {
                    userAnswers[shuffledQuestions[currentIndex].id] = value;
                  });
                },
                selectedOption: currentSelectedAnswer,
              ),
              SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: currentIndex > 0
                        ? () {
                            setState(() {
                              currentIndex--;
                            });
                          }
                        : null,
                    style: Constants.elevatedButtonStyle,
                    child: Text('Back'),
                  ),
                  FilledButton(
                    onPressed: () {
                            if (currentSelectedAnswer == -1) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Please select an answer'),
                                ),
                              );
                              return;
                            }

                            if (currentIndex < shuffledQuestions.length - 1) {
                              setState(() {
                                currentIndex++;
                              });
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CheckedAnswer(),
                                ),
                              );
                            }
                          },
                    style: Constants.filledButtonStyle,
                    child: Text(currentIndex == 9 ? 'Finish' : 'Next'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
