import 'package:quiz_app/models/question_option.dart';

class QuizQuestion {
  QuizQuestion(this.id, this.question, this.options, {this.answerRemarks});

  final int id;
  final String question;
  final List<QuestionOption> options;
  final String? answerRemarks;

  List<QuestionOption> getShuffleOptions(){
    var tempOptions = options;
    tempOptions.shuffle();
    return tempOptions;
  }
}