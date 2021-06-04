import 'package:flutter/material.dart';

//自定义的icon组件
// ignore: must_be_immutable
class IconContainer extends StatelessWidget{
  double size = 36.0;
  Color color = Colors.green[200];
  IconData icon;
  
  IconContainer(this.icon,{this.color,this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:100.0,
      width:100.0,
      color:this.color,
      child:Center(
        child:Icon(
          this.icon,
          size: this.size,
          color: Colors.white,
        )
      )
    );
  }
}
//Row组件
class MyRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400.0,
        width: 500.0,
        color: Colors.pink[200],
        child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//水平布局
        crossAxisAlignment: CrossAxisAlignment.center,//纵轴布局
        children:<Widget>[
            IconContainer(Icons.home,color: Colors.green),
            IconContainer(Icons.search,color: Colors.red),
            IconContainer(Icons.archive,color: Colors.orange),
            IconContainer(Icons.face,color: Colors.yellow)
          ]
        ),
      ),
    );
  }
}
//Column组件
class MyColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 500.0,
        width: 500.0,
        color: Colors.pink[200],
        child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//水平布局
        crossAxisAlignment: CrossAxisAlignment.center,//纵轴布局
        children:<Widget>[
            IconContainer(Icons.home,color: Colors.green),
            IconContainer(Icons.search,color: Colors.red),
            IconContainer(Icons.archive,color: Colors.orange),
            IconContainer(Icons.face,color: Colors.yellow)
          ]
        ),
      ),
    );
  }
}
//Expanded  类似于web的flex布局
class MyExpanded extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400.0,
        width: 500.0,
        color: Colors.pink[200],
        child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//水平布局
        children:<Widget>[
          Expanded(
            flex: 1,//占整个容器1/4
            child: IconContainer(Icons.home,color: Colors.green),
          ),
          Expanded(
            flex: 2,//占整个容器2/4
            child: IconContainer(Icons.search,color: Colors.red),
          ),
          Expanded(
            flex: 1,//占整个容器1/4
            child: IconContainer(Icons.search,color: Colors.orange),
            ///  ```也可以这样
            /// IconContainer(Icons.search,color: Colors.orange),
            /// Expanded(
            ///   flex: 1,
            ///   child: IconContainer(Icons.search,color: Colors.red),
            /// ),
            /// ``` flex 1就跟web的一样，该组件的宽度为其他组件所占的宽度后剩余的宽度自适应
          ),
        ])
      ),
    );
  }
}
//练习以上内容
class MyLayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        width:500.0,
        height:510.0,
        child:Column(
          children: <Widget>[
            new Container(
              width:500.0,
              height:300.0,
              color:Colors.black,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            ),
            new Row(
              children: <Widget>[
                Container(
                  width: 320.0,
                  height: 200.0,
                  child: Image.asset(
                    'images/img.png',
                    fit:BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child:new Column(
                      children: <Widget>[
                        Container(
                          child: Center(
                            child: Text(
                            'xxxx',
                            ),
                          ),
                          height: 100.0,
                          width:170.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:Colors.green[300],
                              width:3.0,
                              style: BorderStyle.solid
                            )
                          ),
                        ),
                        Container(
                          child: Text('自己练习的盒子'),
                          height: 100.0,
                          width:170.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:Colors.green[300],
                              width:3.0,
                              style: BorderStyle.solid
                            )
                          ),
                        ),
                      ],
                    )
                  )
                ),
              ],
            )
          ],
        )
      )
    );
  }
}