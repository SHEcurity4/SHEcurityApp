import 'package:flutter/material.dart';
import 'package:shecurity/api/teacherapi.dart';
List<Map<String, dynamic>> colleges = [];
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController Gender = TextEditingController();
  TextEditingController qualification= TextEditingController();
  TextEditingController College_name=TextEditingController();
  TextEditingController password=TextEditingController();
class Teachregister extends StatelessWidget {
   Teachregister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TeacherRegister'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: phone,
                decoration: InputDecoration(
                  labelText: 'PhoneNo.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: Gender,
                decoration: InputDecoration(
                  labelText: 'Gender',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: qualification,
                decoration: InputDecoration(
                  labelText: 'Qualification',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: College_name,
                decoration: InputDecoration(
                  labelText: 'College_name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  
                  teacherapi(Name: name.text, Phone: phone.text, Email: email.text, Gender: Gender.text, Qualification: qualification.text, College: College_name.text,password: password.text, context: context, );},
                   child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 68, 255, 246),
                  foregroundColor: const Color.fromARGB(255, 246, 244, 244),
                  minimumSize: Size(200, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(16),
                  ),
                )
                
              ),
              TextButton(onPressed: () {}, child: Text('Cancel')),
             
             ] ,
          ),
        ),
      ),
    );
  }
}

  
  
  

  
              
            
    