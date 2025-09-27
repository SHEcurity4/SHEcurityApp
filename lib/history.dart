import 'package:flutter/material.dart';

class history extends StatelessWidget {
   history({super.key});
  List<Map<String,dynamic>> doctors=[
    {'name':'midha','qualification':'MBBS','specialization':'general'},
     {'name':'niya','qualification':'MBBS','specialization':'general'},
      {'name':'ananya','qualification':'MBBS','specialization':'general'},
       {'name':'hafiya','qualification':'MBBS','specialization':'general'},
        {'name':'fadwa','qualification':'MBBS','specialization':'general'},
   ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Medical Appointments Status'),
      centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 232, 160, 160),),body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index)
          {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
              tileColor: const Color.fromARGB(255, 232, 228, 226),
              leading: CircleAvatar(radius: 30,child: Icon(Icons.person),backgroundColor: Colors.white,),
              title: Text(doctors[index]['name']),
              subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                  Text(doctors[index]['qualification']),
                  Text(doctors[index]['specialization']),]
              ),
              trailing: Container(child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('status'),
                  ),decoration: BoxDecoration(color: const Color.fromARGB(255, 228, 199, 111), borderRadius: BorderRadius.circular(8)),),
              
      ));}));
  }
}