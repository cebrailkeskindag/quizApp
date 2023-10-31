import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor:
            Color.fromARGB(255, 10, 105, 163), //Configuration Widgets
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/profil.jpeg',
                height: 200,
                width: 200,
              ),
              Text(
                "Cebrail Keskindağ",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              Text(
                "Mobil Uygulama Flutter-1A",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text(
                "31/10/2023",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
//İntellisense=>ctrl + space
//const
//shift + alt + f
