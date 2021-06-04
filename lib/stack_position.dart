import 'package:flutter/material.dart';

//自定义的icon组件
// ignore: must_be_immutable
class MyStackPositon extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      height:300.0,
      width:300.0,
      color:Colors.green[200],
      child: Stack(
        children:<Widget> [
          ///```stack  结合  align 的定位 Alignment(0,0)表示在容器的正中间负数表示往上或者左走，正数表示往下或者右走
          ///Align(
          ///  alignment:Alignment(0,-0.5),
          ///  child:Icon(Icons.send,size:40,color:Colors.white),
          ///),
          ///Align(
          ///  alignment:Alignment.bottomLeft,
          ///  child:Icon(Icons.home,size:40,color:Colors.white),
          ///),
          ///```
          ///
          Positioned(   //top left bottom right  类似于css的绝对定位，在父级容器的某个位置
            top: 0,
            right: 0,
            child: Icon(Icons.send,size:40,color:Colors.white)
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child:Icon(Icons.home,size:40,color:Colors.white)
          ),
        ]
      ),
    );
  }
}