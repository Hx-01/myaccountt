import 'package:flutter/material.dart';
import 'package:myaccount1/Home/Login.dart';
import 'package:myaccount1/Home/MyAccountPage.dart';


void main() => runApp(new MaterialApp(
  home: new MyAccount(),
));



class MyAccount extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation main',
      home: new Home(),
    );
  }


}



