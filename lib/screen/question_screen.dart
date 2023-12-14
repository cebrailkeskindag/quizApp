import 'package:flutter/material.dart';
import 'package:quizApp/color_page/colors.dart';
import 'package:quizApp/data/questions.dart';
import 'package:quizApp/screen/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  int questionNumber = 0;

  void changeQuestion() {
    setState(() {
      questionNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Questions"),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  questions[questionNumber].question,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ...questions[questionNumber].answers.map((answer) {
              return ElevatedButton(
                onPressed: () {
                  if (questionNumber < questions.length - 1) {
                    changeQuestion();
                  } else if (questionNumber == questions.length - 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResultScreen()),
                    );
                  }
                },
                child: SizedBox(
                  height: 100,
                  child: Card(
                    color: Colors.blueGrey,
                    margin: EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        answer,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
