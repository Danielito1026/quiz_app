class SummaryData {
  final int questionId;
  final String questionText;
  final int selectedAnswerId;
  final String selectedAnswerText;
  final int correctAnswerId;
  final String correctAnswerText;
  final bool isCorrect;
  final String? remarks;

  SummaryData(
    this.questionId,
    this.questionText,
    this.selectedAnswerId,
    this.selectedAnswerText,
    this.correctAnswerId,
    this.correctAnswerText,
    this.isCorrect,
    this.remarks,
  );
}
