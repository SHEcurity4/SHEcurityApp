import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
   RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
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
                    labelText: 'Age',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
            ),
             SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                    labelText: 'PhoneNo.',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
            ),
             SizedBox(height: 10,),
            DropdownButtonFormField(
              decoration: InputDecoration(
                    labelText: 'Select a gender',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
              value:selectedgender,
              items: ['Male','Female','Other'].map((Gender)=>DropdownMenuItem(child:Text(Gender),value: Gender,)).toList(), onChanged: (value){
                setState(() {
                  selectedgender=value;
                });
              }),
             SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                    labelText: 'College',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
            ),
             SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
            ),
             SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
            ),
            SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 68, 255, 246),
                    foregroundColor: const Color.fromARGB(255, 246, 244, 244),
                    minimumSize: Size(200, 40),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))
                  ),
                ),
                TextButton(onPressed: (){}, child:Text('Cancel') )
          ],
          ),
        ),
      ),
    );
  }
}