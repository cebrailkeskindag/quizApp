import 'package:flutter/material.dart';
import 'package:quizApp/color_page/colors.dart';
import 'package:quizApp/screen/question_screen.dart';
import 'package:quizApp/screen/start_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sonuç Ekranı"),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: const Text(
                "Quiz Bitti...",
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StartScreen()));
                    },
                    child: const Text(
                      "Anasayfaya Dön",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.green.shade600,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuestionScreen()));
                    },
                    child: const Text(
                      "Quizi Tekrarla",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.red.shade600,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
