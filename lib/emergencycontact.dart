import 'package:flutter/material.dart';

class Emergencycontact extends StatelessWidget {
   Emergencycontact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text('EMERGENCY CONTACTS'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 218, 110, 9),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
            SizedBox(height: 10,),
            TextFormField(
              
              decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
            ),
            SizedBox(height: 10,),
             TextFormField(
              decoration: InputDecoration(
                    labelText: 'Phone No.',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
            ),
          
          SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text('ADD'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 148, 13, 17),
                foregroundColor: const Color.fromARGB(255, 246, 244, 244),
                minimumSize: Size(200, 40),
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))
              ),
            ),
            
            ]
          )
        )
      
      )
    );
  }
}