import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_project/Utils/routes_name.dart';

class splashservices{
  void isLogin(BuildContext context){
   Timer(Duration(seconds: 5), (){
     Navigator.pushReplacementNamed(context, RoutesName.onboardScreen);
     
     
   });
  }
}