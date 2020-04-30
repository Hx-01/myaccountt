import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyAccountPage.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _HomeState();
  }

}

class _HomeState extends State<Home> {
  var _Key = GlobalKey<FormState>();
  var _Key2 = GlobalKey<FormState>();

  @override

  TextEditingController _emailController =  TextEditingController();
  TextEditingController password =  TextEditingController();

  set displayResult(Future displayResult) {}


  // ignore: non_constant_identifier_names
//  void _Login(){
//    if(_emailController.text.trim().isEmpty) {
//      Navigator.push(
//        context, MaterialPageRoute(builder: (context) => MyAccountPage()),);
//    }
//
//}



  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title:  Text('Login'),
      ),
      body: Container(
        padding: EdgeInsets.all(22),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            new Form(
              key: _Key,
//              child: Padding(
//              padding: EdgeInsets.all(33),
//              height: 120,
//              width: 360,
              child: new Column(
                children: <Widget>[
                  new TextFormField(
                    controller: _emailController,
                    validator: (String value){
                      if(value.isEmpty){
                        return'Please enter your E-mail';
                      }
                    },
                    decoration: InputDecoration(
                        icon: new Icon(Icons.person , color: Colors.red.shade900, size: 30,),
                        hintText: 'E-mail'
                    ),
                  ),
                ],
              ),
            ),
            new Form(
              key: _Key2,
//              child: Padding(
//            padding: EdgeInsets.all(33),
//               height: 120,
//              width: 300,
              child: new Column(
                children: <Widget>[
                  new TextFormField(
                    controller: password,
                    validator: (String value){
                      if(value.length < 6){
                        return 'Enter your Password(must enter 6 letters or more)';
                      }
                    },
                    decoration: InputDecoration(
                        icon: new Icon(Icons.lock, color: Colors.red.shade900, size: 30,),
                        hintText: 'Password'
                    ),
                    obscureText: true,
                  ),
                  new Padding(padding: EdgeInsets.all(11),),
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        new FlatButton(
                          color: Colors.red.shade900,
                          textColor: Colors.white,
                          onPressed: () {
                            if(_Key.currentState.validate()&&_Key2.currentState.validate()){
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) => MyAccountPage()),);}
                          },
                          child: new Text('Login'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool validate() {}
}