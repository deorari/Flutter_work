import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column( //same can be applied to row
            //mainAxisAlignment :MainAxisAlignment.center,
            //mainAxisAlignment :MainAxisAlignment.start,
           // mainAxisAlignment :MainAxisAlignment.end,
            // mainAxisAlignment :MainAxisAlignment.spaceEvenly,
           // mainAxisAlignment :MainAxisAlignment.spaceBetween,
           // mainAxisAlignment :MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.end,
            //crossAxisAlignment:CrossAxisAlignment.stretch ///for row to be fully strected vertically
            children: <Widget>[
              Container(

                height: 100.0,
                width: double.infinity,
                //margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),   //EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),  //EdgeInsets.only(left:10.0)
                // padding: EdgeInsets.all(20.0),  /used to given margin to the content inside the container
                //
                color: Colors.white,
                child: Text("Container 1"),),
              SizedBox(
                height: 20.0, //to give space between children , this is for columns
              ),
                // {
                //  width:30.0,
               // }
              Container(width:double.infinity,height: 100.0,color: Colors.blue, child: Text("Container 2"),),
             // Container(
              //  width: double.infinity,  // full width container
             //   height:20.0,
              //),
            ],
          ),

        ),
      ),

    );
  }
}
