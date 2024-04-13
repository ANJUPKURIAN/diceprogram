import 'dart:math';

import 'package:flutter/material.dart';

class DiceView extends StatefulWidget { // widget class
  const DiceView({super.key});

  @override
  State<DiceView> createState() => _DiceViewState();  // new statefull class function .used to monitor changes in ui.
}

class _DiceViewState extends State<DiceView> { // new state class.changes are written inside state class.
                                                   // statefull widget has a lifecycle.

   int ? randomNumber;
     List imagePaths=[
      "assets/d1.jpg",
      "assets/d2.jpg",
      "assets/d3.jpg",
      "assets/d4.jpg",
      "assets/d5.jpg",
      "assets/d6.jpg",
//diceprogram\assets\d1.jpg
      ];

   @override
  Widget build(BuildContext context) {
    
     
    return  SafeArea(
     child:Scaffold(
      body:Center(
      child:InkWell(
        onTap: (){
           
           randomNumber=Random().nextInt(6);
           setState(() {

           });
           
       },
        
         child: Image.asset(randomNumber==null
          ?"assets/button.png"
          :imagePaths[randomNumber!]),
        ),
       ),
      ),
     );
  }
}