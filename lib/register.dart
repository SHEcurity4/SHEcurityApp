import 'package:flutter/material.dart';
import 'package:shecurity/api/fetchcollegeapi.dart';
import 'package:shecurity/api/registerapi.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  void initState() {
    // TODO: implement initState
    loadColleges();
    super.initState();
  }
  String? selectedgender;

  Map<String, dynamic>? selectedcollege;

  List<Map<String, dynamic>> colleges = [];
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> loadColleges() async{
    try {
      final data=await fetchColleges();
      setState(() {
        colleges=data;
      });
    } catch (e) {
      
    }
  }

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
                controller: age,
                decoration: InputDecoration(
                  labelText: 'Age',
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
              DropdownButtonFormField(
                decoration: InputDecoration(
                  labelText: 'Select a gender',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                value: selectedgender,
                items: ['Male', 'Female', 'Other']
                    .map(
                      (Gender) =>
                          DropdownMenuItem(child: Text(Gender), value: Gender),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedgender = value;
                  });
                },
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<Map<String, dynamic>>(
                decoration: InputDecoration(
                  labelText: 'College Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                value: selectedcollege,
                items:
                    colleges
                        .map(
                          (College) => DropdownMenuItem(
                            child: Text(College['College_name']),
                            value: College,
                          ),
                        )
                        .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedcollege = value;
                  });
                },
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
                controller: password,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
  // Simple form validation
  if (name.text.isEmpty ||
      phone.text.isEmpty ||
      email.text.isEmpty ||
      age.text.isEmpty ||
      password.text.isEmpty ||
      selectedgender == null ||
      selectedcollege == null ||
      int.tryParse(phone.text) == null ||
      int.tryParse(age.text) == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Please fill all fields correctly.")),
    );
    return;
  }

  Registerapi(
    Name: name.text,
    Phone: int.parse(phone.text),
    Email: email.text,
    Gender: selectedgender!,
    Age: int.parse(age.text),
    Password: password.text,
    College: selectedcollege!['id'],
    context: context,
  );
},

                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 68, 255, 246),
                  foregroundColor: const Color.fromARGB(255, 246, 244, 244),
                  minimumSize: Size(200, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(16),
                  ),
                ),
              ),
              TextButton(onPressed: () {}, child: Text('Cancel')),
            ],
          ),
        ),
      ),
    );
  }
}
