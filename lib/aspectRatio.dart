import 'package:flutter/material.dart';

//AspectRatio   使子组件尽可能的填充父组件
class MyAspectRatio extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 4.0/1.0, //宽 / 高
        child: Container(
          color: Colors.yellow,
        ),
    );
  }
}