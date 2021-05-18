import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title:Center(child: Text('Dicee'),),
          backgroundColor: Colors.pink,
        ),
        body: DicePage(),
      ),
    ),
  );
}
//WE COMMENTED THIS BECAUSE NOW WE WANT THAT ON TAPPING THE IMAGE OUR DICE IMAGE SHOULD CHANGE SO
//WE OUR CHANGING OUR WIDGET TO STATEFUL WIDGET
/*class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {        
  return Center(
      child: Row(                           
                                            
        children:<Widget>[
          Expanded(child: FlatButton(onPressed: (){
            print('left button pressed');
          },
            child: Image.asset('images/dice1.png'),),),   
          Expanded(child: FlatButton(onPressed: (){
            print('right button pressed');
          },
            child: Image.asset('images/dice2.png'),),),           ]
      ),
    );
  }
}*/

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  void onclick()
  {
    setState(() {
    leftDiceNumber=Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  });

  }
  @override
  Widget build(BuildContext context) {     
    return Center(
      child: Row(                          
          children:<Widget>[
            Expanded(child: FlatButton(onPressed: () {
                onclick();
            },
              child: Image.asset('images/dice$leftDiceNumber.png'),),),    
            Expanded(child: FlatButton(onPressed: (){
              onclick();
            },
              child: Image.asset('images/dice$rightDiceNumber.png'),),),    
          ]
      ),
    );
  }
}
