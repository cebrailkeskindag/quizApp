import 'package:flutter/material.dart';
import 'package:quizApp/screen/question_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/quiz-time.png",
              width: 200,
              height: 200,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QuestionScreen()));
              },
              child: const Text(
                "Start",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green.shade600,
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20)),
            ),
          ],
        ),
      ),
    );
  }
}
