import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/models/question_option.dart';

List<QuizQuestion> questions = [
  QuizQuestion(
    1,
    'What is the correct way to declare a nullable String in Dart?',
    [
      QuestionOption(1, 'String? name', true),
      QuestionOption(
        2,
        'String name?',
        false,
        remarks: 'The ? goes after the type, not the variable name',
      ),
      QuestionOption(
        3,
        'String! name',
        false,
        remarks: '! is for non-nullable assertion, not nullable declaration',
      ),
      QuestionOption(
        4,
        'Nullable<String> name',
        false,
        remarks: 'Dart doesn\'t use angle brackets for nullable types',
      ),
    ],
    answerRemarks:
        'In Dart, you add ? after the type to mark it as nullable: String? name',
  ),

  QuizQuestion(
    2,
    'Which widget is used to create a scrollable list of widgets in Flutter?',
    [
      QuestionOption(5, 'ListView', true),
      QuestionOption(
        6,
        'Column',
        false,
        remarks:
            'Column doesn\'t scroll by default, would need SingleChildScrollView',
      ),
      QuestionOption(
        7,
        'Row',
        false,
        remarks:
            'Row doesn\'t scroll by default, would need SingleChildScrollView',
      ),
      QuestionOption(
        8,
        'GridView',
        false,
        remarks: 'GridView is for grid layouts, ListView is for linear lists',
      ),
    ],
    answerRemarks:
        'ListView is the go-to widget for scrollable lists in Flutter',
  ),

  QuizQuestion(
    3,
    'What does the "async" keyword do in Dart?',
    [
      QuestionOption(
        9,
        'Makes a function execute synchronously',
        false,
        remarks: 'async actually enables asynchronous execution',
      ),
      QuestionOption(
        10,
        'Marks a function as having asynchronous operations',
        true,
      ),
      QuestionOption(
      11,
        'Creates a new isolate',
        false,
        remarks: 'async doesn\'t create isolates, use Isolate.spawn() for that',
      ),
      QuestionOption(
        12,
        'Converts a callback to a Future',
        false,
        remarks: 'async is used with functions, not for converting callbacks',
      ),
    ],
    answerRemarks:
        'async marks a function as asynchronous, allowing you to use await inside it',
  ),

  QuizQuestion(
    4,
    'Which Flutter method is called when the widget is inserted into the widget tree?',
    [
      QuestionOption(13, 'initState()', true),
      QuestionOption(
        14,
        'build()',
        false,
        remarks: 'build() is called after initState() during initialization',
      ),
      QuestionOption(
        15,
        'didChangeDependencies()',
        false,
        remarks: 'This is called after initState(), not first',
      ),
      QuestionOption(
        16,
        'dispose()',
        false,
        remarks: 'dispose() is called when the widget is removed from the tree',
      ),
    ],
    answerRemarks:
        'initState() is the first method called when a StatefulWidget is created',
  ),

  QuizQuestion(
    5,
    'What is the purpose of the "const" keyword in Flutter?',
    [
      QuestionOption(
        17,
        'Creates a mutable object',
        false,
        remarks: 'const creates immutable objects',
      ),
      QuestionOption(18, 'Creates a compile-time constant widget', true),
      QuestionOption(
        19,
        'Creates a runtime constant',
        false,
        remarks: 'final creates runtime constants',
      ),
      QuestionOption(
        20,
        'Makes a widget rebuild',
        false,
        remarks: 'const prevents rebuilds by creating canonicalized instances',
      ),
    ],
    answerRemarks:
        'const creates widgets that are immutable and compiled at compile-time, improving performance',
  ),

  QuizQuestion(
    6,
    'Which operator is used for null-aware assignment in Dart?',
    [
      QuestionOption(21, '??=', true),
      QuestionOption(
        22,
        '??',
        false,
        remarks: '?? is the null-aware coalescing operator, not assignment',
      ),
      QuestionOption(
        23,
        '?.',
        false,
        remarks: '?. is the null-aware access operator',
      ),
      QuestionOption(
        24,
        '!',
        false,
        remarks: '! is the null-assertion operator',
      ),
    ],
    answerRemarks: '??= assigns a value only if the variable is currently null',
  ),

  QuizQuestion(
    7,
    'What does the "Expanded" widget do in Flutter?',
    [
      QuestionOption(
        25,
        'Creates an expandable section',
        false,
        remarks: 'ExpansionTile is for expandable sections',
      ),
      QuestionOption(
        26,
        'Makes a child fill available space in a Row/Column',
        true,
      ),
      QuestionOption(
        27,
        'Creates a full-screen widget',
        false,
        remarks: 'SizedBox.expand() or Container with double.infinity',
      ),
      QuestionOption(
        28,
        'Adds padding around a widget',
        false,
        remarks: 'Padding widget is for adding padding',
      ),
    ],
    answerRemarks:
        'Expanded widgets are used inside Row, Column, or Flex to make children fill available space',
  ),

  QuizQuestion(
    8,
    'How do you handle exceptions in Dart?',
    [
      QuestionOption(29, 'try-catch-finally', true),
      QuestionOption(
        30,
        'if-else statements',
        false,
        remarks: 'if-else doesn\'t handle exceptions, only conditions',
      ),
      QuestionOption(
        31,
        'guard clauses',
        false,
        remarks: 'Dart doesn\'t have guard clauses like Swift or Kotlin',
      ),
      QuestionOption(
        32,
        'exception blocks',
        false,
        remarks: 'The correct syntax is try-catch, not exception blocks',
      ),
    ],
    answerRemarks:
        'Dart uses try, catch, on, and finally blocks for exception handling',
  ),

  QuizQuestion(
    9,
    'What is a Stream in Dart?',
    [
      QuestionOption(33, 'A sequence of asynchronous events', true),
      QuestionOption(
        34,
        'A type of List',
        false,
        remarks: 'Stream is similar but for async data, not a List type',
      ),
      QuestionOption(
        35,
        'A Future that returns multiple values',
        false,
        remarks: 'Future returns a single value, Stream returns multiple',
      ),
      QuestionOption(
        36,
        'A database connection',
        false,
        remarks: 'Stream is a programming concept, not database-specific',
      ),
    ],
    answerRemarks:
        'A Stream provides a sequence of asynchronous data events over time',
  ),

  QuizQuestion(
    10,
    'Which command creates a new Flutter project?',
    [
      QuestionOption(
        37,
        'flutter new project',
        false,
        remarks: 'The correct command is "flutter create"',
      ),
      QuestionOption(
        38,
        'flutter init',
        false,
        remarks: 'The correct command is "flutter create"',
      ),
      QuestionOption(39, 'flutter create', true),
      QuestionOption(
        40,
        'flutter start',
        false,
        remarks: 'The correct command is "flutter create"',
      ),
    ],
    answerRemarks:
        'Use "flutter create project_name" to create a new Flutter project',
  ),
];
