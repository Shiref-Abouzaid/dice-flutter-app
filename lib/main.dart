import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Zahra',
              style: TextStyle(
                fontSize: 30
              ),
            )

          ),
          backgroundColor: Colors.red,
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
  int firstCount  = 1;
  int secondCount =  1;

  void count() {
    setState((){
      firstCount  = Random().nextInt(6) + 1;
      secondCount = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [

          Expanded(
            child:TextButton(
              child: Image.asset('images/dice$firstCount.png'),
              onPressed: (){
                count();
              }
        
            )
          ),
          Expanded(
            child:TextButton(
              onPressed: (){
                count();
              },
              child: Image.asset('images/dice$secondCount.png'),
            )
          ),

        ],
      ),
    );
  }
}