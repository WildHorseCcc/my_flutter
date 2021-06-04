import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {

  _alertDialog() async{
    var result = await showDialog(  //通过async awiat在外边来获取点击的值  往pop的context传值
      context: context, 
      builder: (context){
        return AlertDialog(
          title:Text('提示信息'),
          content: Text('你确定提交吗？'),
          actions: <Widget>[
            FlatButton(
              onPressed: (){
                Navigator.pop(context,'cancel');//取消该弹窗
              }, 
              child: Text("取消")
            ),
            FlatButton(
              onPressed: (){
                Navigator.pop(context,'ok');
              }, 
              child: Text("确定")
            ),
          ],
        );
      }
    );
    print(result);
  }

  _simpleDialog() async{
    var result = await showDialog(  //作用同上
      context: context, 
      builder: (context){
        return SimpleDialog(
          title:Text('选择内容'),
          children: <Widget>[
            SimpleDialogOption(
              child:Text('选项A'),
              onPressed:(){
                Navigator.pop(context,'选择了A');
              }
            ),
            SimpleDialogOption(
              child:Text('选项B'),
              onPressed:(){
                Navigator.pop(context,'选择了B');
              }
            ),
            SimpleDialogOption(
              child:Text('选项C'),
              onPressed:(){
                Navigator.pop(context,'选择了C');
              }
            ),
          ],
        );
      }
    );
    print(result);
  }

  _showModalButtonSheet() async{
    var reslut = await showModalBottomSheet(
      context: context, 
      builder: (context){
        return Container(
          height: 200.0,
          child: Column(
            children:<Widget>[
              InkWell(
                child:Text('分享A'),
                onTap: (){
                  Navigator.pop(context,'分享A');
                },
              ),
              Divider(),
              InkWell(
                child:Text('分享B'),
                onTap: (){
                  Navigator.pop(context,'分享B');
                },
              ),
              Divider(),
              InkWell(
                child:Text('分享C'),
                onTap: (){
                  Navigator.pop(context,'分享C');
                },
              ),
              Divider(),
              InkWell(
                child:Text('分享D'),
                onTap: (){
                  Navigator.pop(context,'分享D');
                },
              ),
            ]
          ),
        );
      }
    );
    print(reslut);
  }

  _toast(){
    Fluttertoast.showToast(
        msg: "提示信息",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         body: Center(
           child: Container(
             height: 700.0,
             width: 500.0,
             child: Column(
               children:<Widget>[
                 TextButton(
                   onPressed: _alertDialog, 
                   child: Text('弹出alert弹窗-alertDialog')
                  ),
                  TextButton(
                   onPressed:_simpleDialog, 
                   child: Text('弹出select弹窗-simpleDialog')
                  ),
                  TextButton(
                   onPressed: _showModalButtonSheet, 
                   child: Text('弹出ActionSheet底部弹出框-showModalButtonSheet')
                  ),
                  TextButton(
                   onPressed: _toast, 
                   child: Text('toast-flutter_toast第三方库')
                  ),
               ]
             ),
           ),
         ),
       ),
    );
  }
}