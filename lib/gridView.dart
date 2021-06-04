import 'package:flutter/material.dart';

class myGridView extends StatelessWidget{

  List<Widget> _getDataLists(){
    List<Widget> lists = [];
      for(var i=0;i<10;i++){
        lists.add(
          Container(
            color:Colors.red[200],
            width:80.0,
            // height: 80.0,
            child: Text(
              '我是第条$i数据',
              textAlign: TextAlign.center,
            ),
          )       
        );
      }
    return lists;   //lists如果是用var定义的，在return时一定要tolist转换成数组
  }

Widget build(BuildContext context) {
  return Container(
    width: 400.0,
    height: 400.0,
    child:GridView.count(   //还可以使用GridView.Builder   类似于listview的，但gridview还需要控制网格的一些元素，如左右距离啊啥的，写在gridDelegate里面Sliver...贼长
      crossAxisSpacing: 10.0, //控制网格左右的距离
      mainAxisSpacing: 10.0, //控制网格上下的距离
      padding: EdgeInsets.all(10), //控制网格的内边距
      crossAxisCount:3,  //控制列数  一行的widget数
      // childAspectRatio: 0.8,//格子宽高比列
      children:this._getDataLists()
    )
  );
}
}