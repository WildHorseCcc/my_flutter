import 'package:flutter/material.dart';
import '../search.dart';
import '../../components/sh_dialog.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: new Column(
         children:<Widget>[
          SizedBox(height:200.0),
          TextButton(
            child: Text(
              '点击我去搜索页面',
              style: TextStyle(
                color: Colors.white
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.green
              )
            ),
            onPressed: (){
              ///```路由跳转
              ///Navigator.of(context).push(
              ///MaterialPageRoute(
              ///builder: (context)=>Search('我是搜索页呀~')
              ///));
              ///```
              Navigator.pushNamed(context, '/search',arguments: {
                "tip":'命名路由传参啊！'
              });
            },
          ),
          SizedBox(height:50.0),
          TextButton(
            child: Text(
              'toAppBarPage',
              style: TextStyle(
                color: Colors.white
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.green
              )
            ),
            onPressed: (){
              Navigator.pushNamed(context, '/appBarDemo');
            },
          ),
          TextButton(
            child: Text('去到表单页'),
            onPressed: (){
              Navigator.pushNamed(context, '/form');
            },
          ),
          TextButton(
            child: Text('去到日期页'),
            onPressed: (){
              Navigator.pushNamed(context, '/date');
            },
          ),
          TextButton(
            child: Text('去到弹窗页'),
            onPressed: (){
              Navigator.pushNamed(context, '/dialog');
            },
          ),
          TextButton(
            child: Text('显示自定义dialog'),
            onPressed: (){
              showDialog(
                context: context, 
                builder: (context){
                  return MyDialog(
                    title:"自定义dialog组件呀~并在2s后关闭"
                  );
                }
              );
            },
          ),
         ],
       ),
    );
  }
}