import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';

class MyButton extends StatefulWidget{
@override
_MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton>{
String flutterText = ""; 
int index = 0; 
List<String> collection = ["hola"];

void onPressedButton(){
setState(() {
  flutterText = "hola";
  
});

}

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget 190762"),
        backgroundColor: Colors.red,

      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText, style: TextStyle(
                  fontSize: 40.0
                ),),
                Padding( padding: EdgeInsets.all(10.0),

                ),
              ElevatedButton(
                child: Text("Actualizar"),
               
                onPressed: onPressedButton,
                style: 
                ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red))
                )
            ],
          ),
        ),
      ),
      );
  }
}