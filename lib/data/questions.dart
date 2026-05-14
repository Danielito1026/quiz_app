import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/models/question_option.dart';

List<QuizQuestion> questions = [
  QuizQuestion(
    1,
    'Which keyword is used to prevent a C# class from being inherited?',
    [
      QuestionOption(1, 'static', false, remarks: 'static belongs to the type, not instance, but doesn\'t prevent inheritance'),
      QuestionOption(2, 'abstract', false, remarks: 'abstract requires inheritance to be used'),
      QuestionOption(3, 'sealed', true),
      QuestionOption(4, 'readonly', false, remarks: 'readonly is for fields, not class inheritance'),
    ],
    answerRemarks: 'The sealed keyword prevents other classes from inheriting from it.',
  ),
  QuizQuestion(
    2,
    'In ASP.NET Core, which attribute is used to restrict an API endpoint to a specific HTTP method?',
    [
      QuestionOption(1, '[Route]', false, remarks: '[Route] defines the URL pattern'),
      QuestionOption(2, '[Bind]', false, remarks: '[Bind] is for model binding exclusion'),
      QuestionOption(3, '[HttpPost]', true),
      QuestionOption(4, '[Action]', false, remarks: '[Action] is not a standard attribute for HTTP methods'),
    ],
    answerRemarks: 'HTTP method attributes like [HttpGet], [HttpPost], [HttpPut], [HttpDelete] restrict endpoints to specific methods.',
  ),
  QuizQuestion(
    3,
    'What does the SQL clause "GROUP BY" do?',
    [
      QuestionOption(1, 'Sorts the result set', false, remarks: 'ORDER BY is for sorting'),
      QuestionOption(2, 'Removes duplicate rows', false, remarks: 'DISTINCT removes duplicates'),
      QuestionOption(3, 'Groups rows that have the same values into summary rows', true),
      QuestionOption(4, 'Filters rows before grouping', false, remarks: 'WHERE filters before grouping, HAVING filters after'),
    ],
    answerRemarks: 'GROUP BY aggregates data by unique values, often used with COUNT(), SUM(), AVG(), etc.',
  ),
  QuizQuestion(
    4,
    'Which principle of Object-Oriented Programming is primarily about hiding internal details and exposing only what\'s necessary?',
    [
      QuestionOption(1, 'Polymorphism', false, remarks: 'Polymorphism means many forms (method overloading/overriding)'),
      QuestionOption(2, 'Encapsulation', true),
      QuestionOption(3, 'Inheritance', false, remarks: 'Inheritance is about deriving classes from base classes'),
      QuestionOption(4, 'Abstraction', false, remarks: 'Abstraction is related but focuses on hiding complexity, while encapsulation enforces it via access modifiers'),
    ],
    answerRemarks: 'Encapsulation bundles data and methods and hides internal state using access modifiers like private, protected, internal.',
  ),
  QuizQuestion(
    5,
    'In MS SQL Server, what is the difference between VARCHAR and NVARCHAR?',
    [
      QuestionOption(1, 'VARCHAR is faster, NVARCHAR supports Unicode', true),
      QuestionOption(2, 'NVARCHAR is faster, VARCHAR supports Unicode', false, remarks: 'VARCHAR does NOT support Unicode by default'),
      QuestionOption(3, 'They are exactly the same', false, remarks: 'They differ in storage and character support'),
      QuestionOption(4, 'VARCHAR cannot be indexed, NVARCHAR can', false, remarks: 'Both can be indexed'),
    ],
    answerRemarks: 'VARCHAR uses 1 byte per character (non-Unicode), NVARCHAR uses 2 bytes per character (Unicode, supports international characters).',
  ),
  QuizQuestion(
    6,
    'What is the correct way to handle exceptions in C#?',
    [
      QuestionOption(1, 'try - catch - finally', true),
      QuestionOption(2, 'try - except - end', false, remarks: 'That\'s Python syntax'),
      QuestionOption(3, 'try - on - catch', false, remarks: 'Not valid C# syntax'),
      QuestionOption(4, 'begin - rescue - end', false, remarks: 'That\'s Ruby syntax'),
    ],
    answerRemarks: 'C# uses try, catch, and optionally finally blocks for exception handling.',
  ),
  QuizQuestion(
    7,
    'In ASP.NET Core, what is dependency injection (DI)?',
    [
      QuestionOption(1, 'A way to create circular dependencies', false, remarks: 'Circular dependencies are generally a design problem'),
      QuestionOption(2, 'A design pattern where objects receive their dependencies from an external source', true),
      QuestionOption(3, 'A method to inject SQL directly into controllers', false, remarks: 'That would be a security risk (SQL injection)'),
      QuestionOption(4, 'A NuGet package for database connections', false, remarks: 'DI is built into ASP.NET Core, not a package for connections'),
    ],
    answerRemarks: 'DI promotes loose coupling and testability by injecting services via constructors or methods, registered in the IServiceCollection container.',
  ),
  QuizQuestion(
    8,
    'What does SQL injection attack typically exploit?',
    [
      QuestionOption(1, 'Weak database passwords', false, remarks: 'That\'s a different security issue'),
      QuestionOption(2, 'Improperly sanitized user input in SQL queries', true),
      QuestionOption(3, 'Outdated SQL Server versions', false, remarks: 'Version issues are separate vulnerabilities'),
      QuestionOption(4, 'Missing database indexes', false, remarks: 'Indexes affect performance, not SQL injection'),
    ],
    answerRemarks: 'SQL injection occurs when user input is concatenated into SQL queries without proper sanitization or parameterization.',
  ),
  QuizQuestion(
    9,
    'In C#, what is the difference between "const" and "readonly"?',
    [
      QuestionOption(1, 'const is for instance fields, readonly for static fields', false, remarks: 'Both can be static or instance with different rules'),
      QuestionOption(2, 'const is compile-time constant, readonly can be set at runtime', true),
      QuestionOption(3, 'readonly is compile-time constant, const can be set at runtime', false, remarks: 'Opposite is true'),
      QuestionOption(4, 'There is no difference', false, remarks: 'They behave differently'),
    ],
    answerRemarks: 'const values are baked into IL at compile time; readonly can be assigned in constructor or field initializer.',
  ),
  QuizQuestion(
    10,
    'Which ASP.NET Core middleware is responsible for handling cross-origin requests?',
    [
      QuestionOption(1, 'app.UseHttpsRedirection()', false, remarks: 'This handles HTTP to HTTPS redirects'),
      QuestionOption(2, 'app.UseCors()', true),
      QuestionOption(3, 'app.UseAuthentication()', false, remarks: 'This handles authentication'),
      QuestionOption(4, 'app.UseStaticFiles()', false, remarks: 'This serves static files like HTML, CSS, JS'),
    ],
    answerRemarks: 'UseCors() adds Cross-Origin Resource Sharing (CORS) support, allowing or denying requests from different domains.',
  ),
];