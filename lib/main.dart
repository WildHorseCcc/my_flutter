import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//import './hello.dart';    //container
//import './image.dart';    //图片的引入
//import './listViews.dart';    //lsitview 
// import './gridView.dart';    //gridView
// import './rowAndcolumn.dart';    //row  column
// import './stack_position.dart';    // stack position 定位
// import './aspectRatio.dart';    // 使子组件填充父组件
// import './card.dart';    // card卡片组件 
import './statefulWidget.dart';    // 有状态组件
import './bottomNav.dart';    // 有状态组件

import './form.dart';    // 表单组件

//路由跳转页面
import './pages/search.dart';

import './routes/routes.dart';

///有些组件比较相近就并没有实例
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      debugShowCheckedModeBanner: false,//去掉头部的debug
      home:Tabs(),
      ///``` //全局配置路由表
      ///routes:{  
      ///'/search':(context)=>Search('命名路由来的')
      ///}
      ///```
      onGenerateRoute: onGenerateRoute,
      // initialRoute: '/',  //初始化加载的路由
      routes: routes,
    );
  }
}