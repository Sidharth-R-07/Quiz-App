class Question {
  final String question;
  final List<Options> option;

  Question({
    required this.question,
    required this.option,
  });
}

class Options {
  final String text;
  final bool isCorrect;

  Options({
    required this.text,
    required this.isCorrect,
  });
}

List<Question> questionsList = [
  Question(question: "What is your favorite color?", option: [
    Options(text: "Black", isCorrect: false),
    Options(text: "Red", isCorrect: false),
    Options(text: "Green", isCorrect: true),
    Options(text: "Blue", isCorrect: false),
  ]),
  Question(question: "What is your favorite Animal?", option: [
    Options(text: "Dog", isCorrect: false),
    Options(text: "Tiger", isCorrect: false),
    Options(text: "King", isCorrect: false),
    Options(text: "Elephant", isCorrect: true),
  ]),
  Question(question: "What is your favorite Place?", option: [
    Options(text: "Delhi", isCorrect: false),
    Options(text: "Kerala", isCorrect: true),
    Options(text: "Tamil Nadu", isCorrect: false),
    Options(text: "Gujarat", isCorrect: false),
  ]),
  Question(question: "What is your favorite Movie?", option: [
    Options(text: "Kgf", isCorrect: true),
    Options(text: "Bahubali", isCorrect: false),
    Options(text: "Beast", isCorrect: true),
    Options(text: "Vikram", isCorrect: false),
  ]),
];
