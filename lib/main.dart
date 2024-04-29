
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [Container(
            decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,
              image: Image.asset('assets/hintergruende/bg_startscreen.png').image
              ),
              ),
              ),
           Positioned(
            top: 100,
            left: -20,
             child: Container(
              width: 540,
              height: 540,
              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,
                image: Image.asset('assets/grafiken/chick_cupcakes_3D.png').image
                       ),
                ),
                ),
           ),//Ende Positioned vom oberen Container
           Positioned(//Container unten - soll transparent werden und Text + Button rein
            top: 590,
            left: 23,
             child: Opacity(
              opacity: 0.8,
               child: Container(
                padding: EdgeInsets.all(20),
                child: 
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [Text("Feeling Snackish Today?",style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 20,
                                   fontWeight: FontWeight.w700,
                                       
                                       ),
                                     ),
                                     
                                    Text("Explore Angi´s most popular snack selection and get instantly happy.",style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 12,
                                       fontWeight: FontWeight.w700,
                                       
                                       
                                       ),
                                    ),
                                    
                                   ///////////////////
             
                        Positioned(////////// Sollte eigentlich den Container innerhalb des anderen Containers platzieren.
                  top: 70,
                   left: 23,
                     child: Container(   ///// Eigentlich der Button, der aber, wegen dem Verlauf, als Container gemacht ist!                     
                        width: 250,
                        height: 50,
                              decoration: BoxDecoration(
                                 gradient: LinearGradient(//Verlauf von links nach rechts
                                       colors: [ Colors.pinkAccent,Color.fromRGBO(247, 217, 146, 1),],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                                    ), 
                                                    
                                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Order Now",
                                                      style: TextStyle( 
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                    ),/// Sollte die Lage des Button-Containers im Hauptcontainer regeln
                                    
                                    /////////////////
                                    ],), ///////Ende der Spalte / Column       
                width: 350, //gehört zum Hauptcontainer, der den Button enthält!
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 76, 73, 73),
                  border: Border.all(
                    color: const Color.fromARGB(255, 245, 241, 241),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                  ),
                  ),
             ),
          ], 
        ),
      ),);
  }
}
