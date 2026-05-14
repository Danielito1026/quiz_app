import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_option.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class GroupAnswerButton extends StatefulWidget {
  const GroupAnswerButton({
    super.key,
    required this.questionId,
    required this.options,
    required this.onSelected,
    this.selectedOption = -1,
    this.shuffle = true,
    this.readonly = false,
    this.showCorrectOption = false,
    this.isSelectedAnswerCorrect = false,
    this.correctOption = -1,
  });

  final int questionId;
  final List<QuestionOption> options;
  final ValueChanged<int> onSelected;
  final int selectedOption;
  final bool shuffle;
  final bool readonly;
  final bool showCorrectOption;
  final bool isSelectedAnswerCorrect;
  final int correctOption;
  @override
  State<GroupAnswerButton> createState() => _GroupAnswerButtonState();
}

class _GroupAnswerButtonState extends State<GroupAnswerButton> {
  late List<QuestionOption> shuffledOptions;
  int selectedOption = -1;
  bool _hasBeenShuffled = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.shuffle) {
      initializedCurrentOptions();
    } else {
      shuffledOptions = List.of(widget.options);
      selectedOption = widget.selectedOption;
    }
    print('''question No.${widget.questionId}\n
      showCorrectOption: ${widget.showCorrectOption}\n
      correct option: ${widget.correctOption}
    ''');
  }

  void initializedCurrentOptions() {
    if (!_hasBeenShuffled) {
      shuffledOptions = List.of(widget.options);
      shuffledOptions.shuffle();
      _hasBeenShuffled = true;
    }
    selectedOption = widget.selectedOption;
  }

  @override
  void didUpdateWidget(covariant GroupAnswerButton oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

    if (oldWidget.selectedOption != widget.selectedOption) {
      setState(() {
        selectedOption = widget.selectedOption;
      });
    }

    if (oldWidget.questionId != widget.questionId) {
      _hasBeenShuffled = false;
      shuffledOptions = List.of(widget.options);
      setState(() {});
    }
  }

  void selectOption(int option) {
    setState(() {
      selectedOption = option;
    });

    widget.onSelected(selectedOption);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...shuffledOptions.map(
          (opt) => AnswerButton(
            answerText: opt.optionText,
            isActive: selectedOption == opt.id,
            showResultStyle: widget.showCorrectOption,
            isRight: opt.isRight,
            onTap: !widget.readonly ? () => selectOption(opt.id) : () {},
          ),
        ),
      ],
    );
  }
}
