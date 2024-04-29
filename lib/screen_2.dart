import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                        Image.asset('assets/hintergruende/bg_mainscreen.png')
                            .image),
              ),
            ),
            /////////////////////////// UNTERGRUND ////////////////
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Title(
                      color: Colors.red,
                      child: const Text(
                        "Choose Your Favourite Snack",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  //////////////////////////////
                  ///// Ich bekomme hier nichts rein!!!!!!!
                  ///////////////////////////////
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Title(
                      color: Colors.red,
                      child: const Text(
                        "Ich bekomme hier einfach keinen Container rein oder Listview",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
