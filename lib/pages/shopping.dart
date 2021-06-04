import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Shopping extends StatefulWidget {
  Map arguments;
  Shopping({Key key,this.arguments}) : super(key: key);

  @override
  _ShoppingState createState() => _ShoppingState(arguments:this.arguments);
}

class _ShoppingState extends State<Shopping> {
  final Map arguments;
  _ShoppingState({this.arguments});
  
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title:Text('这是有状态的商品页'),
         ),
         body:Center(
           child: new Container(
             height:400.0,
             width:400.0,
             child:Text(
               '这里是商品页,可以买点传来的东西-->${ arguments!=null?arguments["fruit"]:""}',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 36.0
               ),
             ),
             decoration: BoxDecoration(
               color: Colors.orange,
               border: Border.all(
                 width:2.0
               )
             ),
           ),
         )
       ),
    );
  }
}