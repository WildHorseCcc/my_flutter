import 'package:flutter/material.dart';

class DatePage extends StatefulWidget {
  DatePage({Key key}) : super(key: key);

  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {

  DateTime _date = DateTime.now();//获取当前时间
  var _time = TimeOfDay(hour: 12, minute: 30);//初始化一个当前时间，可以不管

  _showDatePicker() async{  //日期选择

    var reslutDate = await showDatePicker(  //是futrue类型，异步类型，类似于promise,可以.then
      context: context,
      initialDate: _date,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
      // locale: Locale('zh')  //非必须
    );
    // .then((value){
    //   print(value);//打印选中的时间
    // });
    setState(() {
      if(reslutDate!=null){
        this._date = reslutDate;
      }
    });
  }

  _showTimePicker() async{   //时间选择
    var reslutTIme = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    setState(() {
      if(reslutTIme!=null){
        this._time = reslutTIme;
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ///print(_date.millisecondsSinceEpoch);//转化成13位时间搓
    ///print(DateTime.fromMillisecondsSinceEpoch(_date.millisecondsSinceEpoch));//时间搓转化成时间
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('日期页'),
         ),
         body: Center(
           child: Container(
             height: 700.0,
             width: 500.0,
             child: Column(
              children:<Widget>[
                InkWell( //该组件没有任何效果，但是可以点击，有ontap事件
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Text('日期组件'),
                      Icon(Icons.arrow_drop_down),
                      Text('当前选择的日期为${ this._date }')
                    ]
                  ),
                  onTap:_showDatePicker
                ),
                InkWell( 
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Text('时间组件'),
                      Icon(Icons.arrow_drop_down),
                      Text('当前选择的时间为${ this._time.format(context) }')
                    ]
                  ),
                  onTap:_showTimePicker
                ),
              ]
            ),
           ),
         )
       ),
    );
  }
}