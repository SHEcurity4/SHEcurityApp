import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 177, 129),
      // appBar: AppBar(
      //   title: Text('Login Page'),
      //   centerTitle: true,
      //   backgroundColor: const Color.fromARGB(255, 158, 150, 148),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 200,),
            Text('SHECURITY',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 30
            ),),
            SizedBox(height: 100,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: const Color.fromARGB(255, 246, 244, 244),
                minimumSize: Size(200, 40),
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))
              ),
            ),
            TextButton(onPressed: (){}, child:Text('Register') )
          ],
        ),
      ),
    );
  }
}
