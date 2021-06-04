import 'package:flutter/material.dart';

class MyList extends StatelessWidget{

  // 自定义方法   返回一个list
  List<Widget> _getData(){

    // List<Widget> list = [];
    List listData = [
      {"text":'苹果'},
      {"text":'梨子'},
      {"text":'香蕉'},
      {"text":'火龙果'},
      {"text":'葡萄'},
      {"text":'草莓'},
    ];

    var tempList = listData.map((e){
      return  Container(
          color:Colors.red[200],
          width:80.0,
          child: Text(
            e["text"]
          ),
        );
    });
    return tempList.toList();


    // for(var i=0;i<10;i++){
    //   list.add(
    //     Container(
    //       color:Colors.red[200],
    //       width:80.0,
    //       child: Text(
    //         '我是第条$i数据'
    //       ),
    //     )       
    //   );
    // }
    // return list.toList();
    // return [   //写死的数据
    //   Container(
    //     color:Colors.red[200],
    //     width:80.0,
    //     height: 100.0,
    //   ),
    //   Container(
    //     color:Colors.yellow[200],
    //     width:80.0
    //   ),
    //   Container(
    //     color:Colors.green[200],
    //     width:80.0,
    //     child: Text('这里有一段文字'),
    //   ),
    //   Container(
    //     color:Colors.grey[200],
    //     width:80.0
    //   )
    // ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        /// 可以用[listview.builder]。   需要研究下使用该方法的横向和纵向布局  
        /// 
        /// `ListView.builder(`
        /// `itemCount:list.length` //遍历的数组长度
        /// `itemBuilder:(context,index){});`  //该处可以抽离成一个单独的方法，调用的使用不要加()，该处不用执行，只是把方法赋给itemBuilder
        /// ```dart
        /// Widget _getDataList(context,index){
        ///   return  {}
        /// }
        /// ```
        child: ListView(
          scrollDirection: Axis.horizontal,
          children:this._getData(),
        ),
        width: 400.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: Colors.orange[200],
          border: Border.all(
            color:Colors.yellow,
            style: BorderStyle.solid,
            width: 4.0
          )
        ),
      )
    );
  }
} 