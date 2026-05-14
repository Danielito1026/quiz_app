import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/summary_data.dart';
import 'package:quiz_app/widgets/gradient_container.dart';
import 'package:quiz_app/widgets/group_answer_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.userAnswers});
  final Map<int, int> userAnswers;

  List<SummaryData> getSummaryData() {
    final List<SummaryData> summaryData = [];

    for (var item in userAnswers.keys) {
      var quizQuestion = questions.firstWhere((q) => q.id == item);

      var selectedAnswer = quizQuestion.options.firstWhere(
        (opt) => opt.id == userAnswers[item],
      );
      var correctAnswer = quizQuestion.options.firstWhere(
        (opt) => opt.id == userAnswers[item],
      );

      summaryData.add(
        SummaryData(
          quizQuestion.id,
          quizQuestion.question,
          selectedAnswer.id,
          selectedAnswer.optionText,
          correctAnswer.id,
          correctAnswer.optionText,
          selectedAnswer.isRight,
          selectedAnswer.isRight
              ? quizQuestion.answerRemarks
              : selectedAnswer.remarks,
        ),
      );
    }

    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    List<SummaryData> summaryData = getSummaryData();

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => Navigator.pop(context)),
        title: Text(
          'Detailed Results',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),
      ),
      body: GradientContainer(
        gradientColors: [Colors.black, Colors.deepPurple],
        gradientBegin: AlignmentGeometry.topLeft,
        gradientEnd: AlignmentGeometry.bottomRight,
        child: SingleChildScrollView(
          child: Column(
            spacing: 10.0,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                color: Colors.deepPurple.shade800,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.quiz,
                        size: 40,
                        color: Colors.deepPurple.shade200,
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Quiz Summary',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'You have answered ${summaryData.where((sd) => sd.isCorrect).length} out of ${summaryData.length} questions correctly!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepPurple.shade100,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6),
              ...summaryData.asMap().entries.map((entry) {
                final index = entry.key;
                final sd = entry.value;
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Card(
                    elevation: 6,
                    color: Colors.grey.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(
                        color: sd.isCorrect
                            ? Colors.green.shade700
                            : Colors.red.shade700,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Question Header
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade900,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: sd.isCorrect
                                      ? Colors.green
                                      : Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    sd.isCorrect ? Icons.check : Icons.close,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  'Question ${index + 1}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Question Content
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                sd.questionText,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade200,
                                  height: 1.4,
                                ),
                              ),
                              SizedBox(height: 16),

                              // Answer Buttons
                              ...questions
                                  .where((q) => q.id == sd.questionId)
                                  .map(
                                    (q) => GroupAnswerButton(
                                      questionId: q.id,
                                      options: q.options,
                                      onSelected: (value) {},
                                      selectedOption: sd.selectedAnswerId,
                                      shuffle: false,
                                      readonly: true,
                                      showCorrectOption: true,
                                      isSelectedAnswerCorrect: sd.isCorrect,
                                      correctOption: q.options
                                          .firstWhere((opt) => opt.isRight)
                                          .id,
                                    ),
                                  ),

                              SizedBox(height: 12),

                              // Remarks Section
                              if (sd.remarks != null && sd.remarks!.isNotEmpty)
                                Container(
                                  padding: EdgeInsets.all(12),
                                  margin: EdgeInsets.only(top: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple.shade900,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.deepPurple.shade600,
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.info_outline, size: 18),
                                      SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          sd.remarks!,
                                          style: TextStyle(
                                            fontSize: 14,
                                            height: 1.4,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
