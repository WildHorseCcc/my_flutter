import 'package:flutter/material.dart';

//自定义有状态组件

class MyStateful extends StatefulWidget{

  MyStateful({Key key}) : super(key: key);
  
   @override
  HomePage createState() =>   HomePage();
 

}

class HomePage extends State<MyStateful>{
   int conut = 10; 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 400.0,
      child: Column(
        children: <Widget>[
          SizedBox(height:20),
          Text('flutter$conut'),
          SizedBox(height:20),
          RaisedButton(
            child: Text('点击我'),
            onPressed: (){
              setState(() {
                this.conut++;
              });
            },
            )
        ],
      ),
    );
  }
}
