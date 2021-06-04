import 'dart:js';

import 'package:flutter/material.dart';

import '../pages/search.dart';
import '../pages/shopping.dart';
import '../layout/appBarDemo.dart';
import '../form.dart';    // 表单组件
import '../date.dart';    // 日期组件
import '../dialog.dart';    // 弹窗组件

//配置路由
final routes = {
  // '/':(context,{arguments})=>Tabs(),
  '/search':(context,{arguments})=>Search(arguments:arguments),
  '/shopping':(context,{arguments}) => Shopping(arguments:arguments),
  '/form':(context) => FormPage(),
  '/date':(context) => DatePage(),
  '/dialog':(context) => DialogPage(),
};


//路由传参的固定写法，可以不用管
var onGenerateRoute = (RouteSettings settings){
        //处理命名路由传参
        final String name = settings.name;
        final Function pageContentBuilder = routes[name];
        if(pageContentBuilder != null){
          if(settings.name != null){
            final Route route = MaterialPageRoute(
              builder: (context)=>pageContentBuilder(context,arguments:settings.arguments)
              );
            return route;
          } else {
            final Route route = MaterialPageRoute(
              builder:
             (context)=>pageContentBuilder(context));
            return route;
          }
        }
      };