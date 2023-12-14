import 'package:flutter/material.dart';
import 'package:quizApp/screen/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      home: const StartScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
