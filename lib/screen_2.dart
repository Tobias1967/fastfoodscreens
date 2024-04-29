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
            ///////////////////////////////////////////////////////////////
            Positioned(
              top: 100,
              left: -20,
              child: Container(
                width: 540,
                height: 540,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          Image.asset('assets/grafiken/chick_cupcakes_3D.png')
                              .image),
                ),
              ),
            ),
            //////////////////////////////////////////////////
            Positioned(
              ////////////////// /////////////////////  Schrift-OUTLINED
              top: 470,
              left: 1,
              child: Container(
                width: 400,
                height: 330,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset('assets/details/T2.png').image),
                ),
              ),
            ),
            ////////////////////////////////////////////////////  Ende Positioned vom oberen Container
            Positioned(
              ///////////////////////////// Container unten - soll transparent werden und Text + Button rein
              top: 590,
              left: 23,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                  child: Container(
                    ///////////////////////     Hauptcontainer Text
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Feeling Snackish Today?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
//////////////////////////////////////////////////////////////////////
                        const SizedBox(
                          height: 10,
                        ),
//////////////////////////////////////////////////////////////////////
                        const SizedBox(
                          width: 300,
                          child: Text(
                            textAlign: TextAlign.center,
                            "Explore Angi´s most popular snack selection and get instantly happy.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        ////////////////////////////////////////////////////
                        const SizedBox(
                          height: 20,
                        ),
                        ////////////////////////////////////////////////////
                        Container(
                          ////////// Eigentlich der Button, der aber, wegen dem Verlauf, als Container gemacht ist!
                          width: 180,
                          height: 40,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              //Verlauf von links nach rechts
                              colors: [
                                Color.fromARGB(137, 255, 64, 128),
                                Color.fromRGBO(247, 217, 146, 0.445),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),

/////////////////////////////////////////////////////////

                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color.fromARGB(180, 213, 7, 161),
                                  blurRadius: 25,
                                  offset: Offset(2, 0.90)),
                            ],

////////////////////////////////////////////////////////
                          ),
                          child: const Center(
                            child: Text(
                              "Order Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ), /////////////////////// ENDE    Grosser     CONTAINER

                        /// Sollte die Lage des Button-Containers im Hauptcontainer regeln

                        /////////////////
                      ],
                    ), ////////////////////////  ENDE der Spalte  COLUMN
                    width:
                        350, //gehört zum Hauptcontainer, der den Button enthält!
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(25, 98, 98, 98),
                      border: Border.all(
                        color: const Color.fromARGB(60, 247, 245, 245),
                      ),
                      borderRadius: const BorderRadius.all(
                          Radius.circular(20)), //Hauptcontainerradius
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
