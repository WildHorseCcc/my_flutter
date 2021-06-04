import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child:new Container(
        child: Image.asset(
          'images/img.png',
          fit:BoxFit.cover,
        ),
        width:400.0,
        height:400.0,
        decoration:BoxDecoration(
          color: Colors.green[200],
          border: Border.all(
            color:Colors.yellow,
            style: BorderStyle.solid,
            width: 4.0
          )
        ),
      )
    );
  }
}