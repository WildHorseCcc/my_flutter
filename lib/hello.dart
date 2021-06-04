import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        'hello flutter and world hello flutter and world hello flutter and world',
        style:TextStyle(
          color:Colors.white,
          fontSize: 48.0,
        ),
        overflow:TextOverflow.ellipsis,
        maxLines: 3,
        textAlign: TextAlign.left,
      ),
      width:400.0,
      height: 500.0,
      // color: Colors.grey,
      alignment: Alignment.center,
      padding:EdgeInsets.only(left:20.0),
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(
          color:Colors.green[300],
          width:3.0,
          style: BorderStyle.solid
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      transform: Matrix4.rotationZ(0.2),
    );
  }
}