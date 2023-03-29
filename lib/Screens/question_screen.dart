import 'package:flutter/material.dart';
import 'package:quizapp/Model/question_model.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int questionIndex = 0;

  int totalScore = 0;

  void onClick(Options option) {
    if (option.isCorrect) {
      setState(() {
        totalScore++;
      });

      print("You clicked correct answer");
    } else {
      print("You clicked wrong answer");
    }

    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Quiz')),
        body: questionIndex < questionsList.length
            ? Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    questionsList[questionIndex].question,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: questionsList[questionIndex].option.length,
                      itemBuilder: (context, index) {
                        final _option =
                            questionsList[questionIndex].option[index];

                        return InkWell(
                          onTap: () => onClick(_option),
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 22),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _option.text,
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Center(
                    child:  Text(
                      'There is no more Questions\n yet !',
                      style: TextStyle(fontSize: 45, fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Score : $totalScore",
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.w800),
                  )
                ],
              ),
        floatingActionButton:
            questionIndex < questionsList.length && questionIndex >= 1
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              questionIndex--;
                            });
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              questionIndex++;
                            });
                          },
                          icon: const Icon(Icons.arrow_forward_ios))
                    ],
                  )
                : const SizedBox());
  }
}
