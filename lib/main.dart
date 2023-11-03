import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/data/questions.dart';
import 'package:tasarim_calismasi/models/quiz_question.dart';

void main() {
  runApp(const MaterialApp(home: QuestionScreen()));
}

// Stateless => Ekranda değişime uğramayacak, UI widget
// CTRL + .
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/profil.jpeg", width: 250),
            const Text(
              "Quiz App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start"),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 20)),
            ),
          ],
        ),
      ),
    );
  }
}

// Boilerplate

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  var sayac = 0;

  void changeQuestion() {
    setState(() {
      sayac += 1;
    }); // değişikliklerin ekrana da yansıtılması için gerekli..
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ÖDEV"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(questions[sayac].question),
            ...questions[sayac].answers.map((answer) {
              return ElevatedButton(
                onPressed: () {
                  if (sayac < 3) {
                    changeQuestion();
                  }
                },
                child: Container(
                  child: Text(answer),
                  width: 100,
                  height: 30,
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
