import 'package:flutter/material.dart';


class MyCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      height:500.0,
      width:500.0,
      color:Colors.green[200],
      child: ListView(
        children:<Widget>[
          new Card(
            margin:EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('张三',style:TextStyle(fontSize:36.0)),
                  subtitle: Text('整天摸鱼大师'),
                ),
                ListTile(
                  title: Text('李四',style:TextStyle(fontSize:36.0)),
                  subtitle: Text('犟嘴大师'),
                ),
                ListTile(
                  title: Text('王麻子',style:TextStyle(fontSize:36.0)),
                  subtitle: Text('隔壁老王'),
                ),
              ],
            ),
          )
        ]
      ),
    );
  }
}