import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MaterialApp(
          home:Scaffold(
            backgroundColor: Colors.indigo[900],
            appBar: AppBar(
              backgroundColor: Colors.indigo[500],
              title: Text(
                'Dicee',
              ),
            ),
            body: DicePage(),
          ),
      ),
  );
}

class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int leftdice=1 , rightdice=4;

  void Diceface(){
    setState(() {
      leftdice= Random().nextInt(6)+1;
      rightdice=Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                Diceface();
              },
              child: Image.asset('images/dice$leftdice.png'),
            ),
          ),

          Expanded(
            child: TextButton(
              onPressed: (){
               Diceface();
              },
                child: Image.asset('images/dice$rightdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}


