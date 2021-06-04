import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  Setting({Key key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children:<Widget>[
              Expanded(
                child:TabBar(
                  tabs: <Widget>[
                    Tab(text:'辅助功能'),
                    Tab(text:'通用功能'),
                    Tab(text:'隐私设置'),
                  ]
                )
              )
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              children:<Widget>[
                Text('键盘'),
                Text('声音'),
                Text('感应'),
              ]
            ),
            Column(
              children:<Widget>[
                Text('wifi'),
                Text('存储'),
                Text('显示'),
              ]
            ),
            Column(
              children:<Widget>[
                Text('密码管理'),
                Text('修改昵称'),
                Text('修改性别'),
              ]
            )
          ],
        ),
      ),

    );
  }
}