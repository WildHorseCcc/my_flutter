import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  Person({Key key}) : super(key: key);

  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           Text('我是个人中心页'),
           TextButton(
             onPressed: (){
               Navigator.pushNamed(context, '/shopping',arguments: {
                 "fruit":1111
               });
             },
              child: Text('点击去购物')
              )
         ],
       ),

    );
  }
}