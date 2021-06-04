import 'package:flutter/material.dart';

class AppBarLayout extends StatelessWidget {
  const AppBarLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(  //顶部增加tab切换栏的话需要在scaffold外层加一个DefaultTabController
        length:2, //顶部tab的数量
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'appbar Demo page',
            ),
            centerTitle: true,//标题居中显示
            backgroundColor: Colors.orange,
            bottom: TabBar( //写切换的导航
              tabs: <Widget>[
                Tab(text:'水果'),
                Tab(text:'服装')
              ],
            ),
            // leading: IconButton(  //覆盖掉自带的返回按钮
            //   icon: Icon(Icons.menu),
            //   onPressed: (){
            //     print('menu');
            //   },
            // ),
            // actions: <Widget>[   //给导航后面加东西
            //   IconButton(
            //     icon: Icon(Icons.settings),
            //     onPressed: (){
            //       print('settings');
            //     },
            //   )
            // ],
          ),
          body: TabBarView(
            children: <Widget>[ //切换菜单里面的内容
              ListView(
                children:<Widget>[
                  Text('苹果'),
                  Text('梨子'),
                  Text('香蕉'),
                  Text('草莓'),
                ]
              ),
              ListView(
                children:<Widget>[
                  Text('体恤'),
                  Text('短裤'),
                  Text('裙子'),
                  Text('外套'),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}