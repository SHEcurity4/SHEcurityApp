import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shecurity/login.dart';

final Dio dio = Dio();
  final String url = "http://192.168.1.134:5000/";

Future<void> Registerapi({
  required String Name,
  required String Phone,
  required String Email,
  required String Gender,
  required String Age,
  required String Password,
  required String College,
  required BuildContext context,
}) async {
  try {
    Response response = await dio.post(
      '$url/UserReg',
      data: {
        "name": Name,
        "phone": Phone,
        "email": Email,
        "gender": Gender,
        "age": Age,
        "password": Password,
        "college": College,
        "username": Name,
      },
    );
    if (response.statusCode==200) {
      Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage(),));
    }
  } catch (e) {
    print(e);
  }
}
