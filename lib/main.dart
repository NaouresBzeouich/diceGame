import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        scaffoldBackgroundColor: Colors.black45,
        useMaterial3: true,
      ),
      home: const Dicee(title: 'dicee home page'),
    );
  }
}

class Dicee extends StatefulWidget {
  const Dicee({super.key, required this.title});
  final String title;

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  List<String> dice = [
    'assets/dice1.png',
    'assets/dice2.png',
    'assets/dice3.png',
    'assets/dice4.png',
    'assets/dice5.png',
    'assets/dice6.png',
  ];

  String dice1 = 'assets/dice1.png' ;
  String dice2 = 'assets/dice1.png' ;

  String haveRandomNumber(){
    var rnd = Random().nextInt(6) ;
    return dice[rnd];
  }

  String haveNextNumber(String Number){
    int i =0;
    for( i =0 ; i <6 ; i++){
      if(Number == dice [i]){
        break;
      }
    }
    if (i == 5){
      return dice[0];
    }else{
      i++;
      return dice[i];
    }
  }

  void pressingleftdice(){
    setState(() {
      dice1 = haveRandomNumber();
      dice2 = haveRandomNumber();
    });
  }

  void pressingRightdice(){
   setState(() {
     // choosing randomly the dice to change
     var rnd = Random().nextInt(2);
     if (rnd == 0){
       dice1 = haveNextNumber(dice1);
     }else {
       dice2 = haveNextNumber(dice2);
     }
   });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.error,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox( height: 50,),
              const Text(
                'game rules ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                )
              ),
              const Text(
                'If you click on the right die, the number on one of the two dice will increment by one.\n If you click on the left die, both dice will randomly display new numbers.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                  )
              ),
              SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset(
                      dice1,
                      width: 150,
                    ),
                    onPressed:() {pressingleftdice();},
                  ),
                  const SizedBox(width: 20,),
                  IconButton(
                    icon: Image.asset(
                      dice2,
                      width: 150,
                    ),
                    onPressed:() {pressingRightdice();},
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
