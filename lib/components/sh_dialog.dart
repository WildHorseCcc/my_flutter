import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog{
  String title;
  MyDialog({this.title=''});

  //flutter的定时器
  _showTimer(context){
    var timer;
    timer = Timer.periodic(
      Duration(milliseconds:2000),(t){
        Navigator.pop(context);
        t.cancel();//取消定时器
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,//透明度
      child:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Padding(
              padding:EdgeInsets.all(10.0),
              child:Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: Text(this.title),
              )
            )
          ]
        )
      )
    );
  }
}