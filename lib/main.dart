import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Dicee Rolling',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
          ),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Center(
            child:Column(
            children : <Widget>[ 
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Image(
                      image: AssetImage('images/dice$leftDiceNumber.png'),
                      height: 100,
                      width: 100,
                    ),
                ),
                 Expanded(
                    child: Image(
                      image: AssetImage('images/dice$rightDiceNumber.png'),
                      height: 100,
                      width: 100,
                    ),
                ),
              ],
             ),
             Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          rightDiceNumber = Random().nextInt(5) + 1;
                          leftDiceNumber = Random().nextInt(5) + 1;
                        });
                      },
                      child: const Text('Start',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        backgroundColor: Colors.red,
                        
                      ),
                      )
                      ),
                ),
              ],
             ),
            ],
          ),
        ),
        )
      ),
    );
  }
}
