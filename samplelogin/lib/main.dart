import 'package:flutter/material.dart';
import 'package:samplelogin/login.dart';
import 'package:samplelogin/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>MyLogin(),
      'register' : (context)=>MyRegister()
    }
  ));
}

