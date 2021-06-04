import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  var userName = new TextEditingController();

  // bool flag = true; //复选框
  List<Map> hobby = [
    {
      "checked":true,
      "title":"吃饭"
    },
    {
      "checked":false,
      "title":"睡觉"
    },
    {
      "checked":false,
      "title":"玩游戏"
    },
  ];
  List choosed = [];//存放选中的数据
  var sex = 1; //单选按钮
  bool swit = true;

  List<Widget> _getHobby(){
    List<Widget> tempList = [];
    for(var i=0;i<this.hobby.length;i++){
      tempList.add(
        CheckboxListTile(
          title: Text(this.hobby[i]["title"]),
          value: this.hobby[i]["checked"], 
          onChanged: (v){
            setState(() {
              this.hobby[i]["checked"] = v;
            });
          }
        )
      );
    }
    return tempList;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.userName.text = '文本框初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('表单页面'),
         ),
         body: Center(
           child: Container(
             height: 700.0,
             width: 500.0,
             child: Column(
              children:<Widget>[
                TextField(
                  decoration:InputDecoration(
                    hintText:'请输入用户名'
                  ),
                  controller:userName,
                  // onChanged: (val){
                  //   setState(() {
                  //     userName.text = val;
                  //   });
                  // },
                ),
                SizedBox(height:10),
                TextButton(
                  child:Text('点击我打印选中的爱好'),
                  onPressed:(){
                    setState(() {
                      this.choosed = this.hobby.map((e){
                        if(e["checked"]){
                          return e["title"];
                        } else return '';
                      }).toList();
                    });
                  }
                ),
                Container(
                  height: 200.0,
                  width: 200.0,
                  //Checkbox
                  child:Column(
                    children:_getHobby()
                    // <Widget>[
                    //   CheckboxListTile( //CheckboxListTile可以配置title等信息
                    //     title: Text('请选择我'),
                    //     value: this.flag, 
                    //     onChanged: (val){
                    //       setState(() {
                    //         this.flag = val;
                    //       });
                    //     },
                    //     activeColor: Colors.green,
                    //   )
                    // ]
                  ),
                ),
                Text('选中的爱好有(${ this.choosed.join(',') })'),
                // Text(this.flag?'选中了checkbox':'未选中checkbox'),
                Row(
                  children:<Widget>[
                    Text('男'),
                    //RadioListTile  类似于CheckboxListTile，可以配置title等信息,该组件放在row里面会报错  selected属性可以选中文字
                    Radio(
                      value: 1, 
                      groupValue: sex,  //单选的按钮组
                      onChanged: (v){
                        setState(() {
                          sex = v;
                        });
                      }
                    ),
                    Text('女'),
                    Radio(
                      value: 2, 
                      groupValue: sex, 
                      onChanged: (v){
                        setState(() {
                          sex = v;
                        });
                      }
                    ),
                  ]
                ),
                Text('你当前的选择的性别为${ sex==1?'男':'女' }'),
                SizedBox(height:20),
                Switch(
                  value: this.swit, 
                  onChanged: (v){
                    setState(() {
                      this.swit = v;
                    });
                  }
                ),
              ]
            ),
           ),
         )
       ),
    );
  }
}

class InputPage extends StatelessWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          height: 500.0,
          width: 600.0,
          color: Colors.green[200],
          child: Column(
            children:<Widget>[
              SizedBox(height:20.0),
              TextField(
                decoration:InputDecoration(
                  hintText: '请输入文本',  //输入框提示语，类似于web的placeholder
                  border: OutlineInputBorder() ,//让文本框周围有边框  类似于web默认的input
                )
              ),
              SizedBox(height:20.0),
              TextField(
                maxLines:4,
                decoration:InputDecoration(
                  hintText: '多行文本', 
                  border: OutlineInputBorder() ,
                )
              ),
              SizedBox(height:20.0),
              TextField(
                obscureText: true,//将文本变为密码框
                decoration:InputDecoration(
                  hintText: '密码框', 
                  border: OutlineInputBorder() ,
                )
              ),
              SizedBox(height:20.0),
              TextField(
                decoration:InputDecoration(
                  labelText: '用户名',  
                  border: OutlineInputBorder() ,
                )
              ),
            ]
          ),
        ),
      ),
    );
  }
}