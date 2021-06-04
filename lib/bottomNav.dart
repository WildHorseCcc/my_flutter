import 'package:flutter/material.dart';
import './statefulWidget.dart';    // 有状态组件

//tabs页面
import './pages/tabs/home.dart';
import './pages/tabs/setting.dart';
import './pages/tabs/person.dart';


class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int countTabs= 0;

  List _pageLists = [
    IndexPage(),
    Person(),
    Setting()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: new Text(
            'hello world',
            style:TextStyle(
              fontSize:24.0,
              color:Colors.yellow[300]
            )
          ),
        ),
        body: Center(
          child:this._pageLists[this.countTabs]
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              title: Text('个人中心')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置')
            ),
          ],
          currentIndex: this.countTabs,//选中第几个
          fixedColor: Colors.green,//选中颜色
          type: BottomNavigationBarType.fixed,//底部导航可以有多个按钮，不然太多布局会出错
          onTap: (int index){ //点击
            setState(() { //改变状态  页面重新渲染
              this.countTabs = index;
            });
          },
        ),
        drawer: Drawer(
          child: Column(
            children:<Widget>[
              Row(
                children:<Widget>[  //直接写DrawerHeader不会充满整行，只会居中，所以需要包装一下
                  Expanded(
                    child:DrawerHeader(
                      child:Text('左侧的drawer')
                    )
                  )
                ]
              ),
              Container(
                height: 100.0,
                child: Center(
                  child: ListTile(
                    title: Text('去购物'),
                    onTap:(){
                      Navigator.of(context).pop();//让调回去的drawer隐藏，不知道为啥- -，还不能写在跳转下面，不然跳转失效，盲猜一波是先触发的这个pop让他隐藏后再进行的跳转
                      Navigator.pushNamed(context, '/shopping');//跳转过去返回上一页的时候左侧的drawer的状态会保持
                    }                    
                  ),
                ),
              ),
            ]
          ),
        ),
      );
  }
}