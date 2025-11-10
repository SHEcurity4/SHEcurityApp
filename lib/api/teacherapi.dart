import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shecurity/login.dart';
import 'package:shecurity/teacher/TeachRegister.dart';

final Dio dio=Dio();
final String url = "http://192.168.1.114:5000";

Future<void>teacherapi({
  required String Name,
  required String Phone,
  required String Email,
  required String Gender,
  required String password,
  required String Qualification,
  required String College, // 👈 CHANGE THIS
  required BuildContext context,
}) async {
  try {
    Response response = await dio.post(
      '$url/TeacherReg',
      data: {
        "Name": Name,
        "Phone_number": Phone,
        "Email": Email,
        "Gender": Gender,
        "Qualification": Qualification,
        "College_id": College,
        "Username": email,
        "Password": password,
      },
    );
    if (response.statusCode == 200||response.statusCode == 201) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    }
  } catch (e) {
    print(e);
  }
}
