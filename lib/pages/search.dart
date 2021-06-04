import 'package:flutter/material.dart';

class Search extends StatelessWidget {

  // String title;
  final arguments;
  Search({Key key,this.arguments}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          // title: Text(this.title),
          title: Text("搜索页面-->${ arguments!=null?arguments['tip']:'' }"),
        ),
        body: new Container(
          child: TextButton(
            child:Text('返回上一级页面',style: TextStyle(color: Colors.white),),
            onPressed: (){  
              Navigator.of(context).pop();  //路由回退
            },
          ),
          height: 300.0,
          width: 300.0,
          color: Colors.green,
        ),
      ),
    );
  }
}