import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shecurity/api/registerapi.dart';
import 'package:shecurity/main.dart';

Future<void> Loginapi({
  required String username,
  required String password,
  context
}) async {
  try{
    Response response = await dio.post(
      '$url/LoginPage',
      data:{
      "Username": username,
      "Password": password,
    
      },
    );
    if (response.statusCode == 200||response.statusCode == 201){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
    
    }
  } catch(e){
    print(e);
  }
}