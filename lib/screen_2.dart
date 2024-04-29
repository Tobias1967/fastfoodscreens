import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          ////////////////////////// UNTERGRUND  //////////////////
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        Image.asset('assets/hintergruende/bg_startscreen.png')
                            .image),
              ),
            ),
            /////////////////////////// UNTERGRUND ////////////////
            Column(
              children: [
                Title(
                  color: Colors.red,
                  child: const Text(
                    "Hier soll etwas stehen",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}
