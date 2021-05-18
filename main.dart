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
  Widget build(BuildContext context) {     //agar row k andr k content ko center mai laana h page k so return Center () k bracket k andr row ka code daal do pura
    return Center(
      child: Row(                           //par ye bht messy hojaega so here is shortcut ie row pr click kro and then flutter
                                            // outline pr wha jo sabse phle widget aara h center kr k usme click kro and automatically saara code center widget k andr aajaega
        children:<Widget>[
          Expanded(child: FlatButton(onPressed: (){
            print('left button pressed');
          },
            child: Image.asset('images/dice1.png'),),),    //by default flex 1 hota h agr hum mention na kare toh, flex bas ratio deta h row column mai
          Expanded(child: FlatButton(onPressed: (){
            print('right button pressed');
          },
            child: Image.asset('images/dice2.png'),),),    //flatbutton mai khud padding h 16 px ki so humne jo external paddingdiya tha padding widget se usko remove krdenge hum
        ]
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
  Widget build(BuildContext context) {     //agar row k andr k content ko center mai laana h page k so return Center () k bracket k andr row ka code daal do pura
    return Center(
      child: Row(                           //par ye bht messy hojaega so here is shortcut ie row pr click kro and then flutter
        // outline pr wha jo sabse phle widget aara h center kr k usme click kro and automatically saara code center widget k andr aajaega
          children:<Widget>[
            Expanded(child: FlatButton(onPressed: () {
                onclick();
            },
              child: Image.asset('images/dice$leftDiceNumber.png'),),),    //by default flex 1 hota h agr hum mention na kare toh, flex bas ratio deta h row column mai
            Expanded(child: FlatButton(onPressed: (){
              onclick();
            },
              child: Image.asset('images/dice$rightDiceNumber.png'),),),    //flatbutton mai khud padding h 16 px ki so humne jo external paddingdiya tha padding widget se usko remove krdenge hum
          ]
      ),
    );
  }
}
