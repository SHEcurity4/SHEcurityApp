import 'package:flutter/material.dart';

class Viewalertsemcnts extends StatelessWidget {
 Viewalertsemcnts({super.key});
  List<Map<String,dynamic>> studentinfo=[
    {'name':'midha','contact no.':'6282271706'},
    {'name':'anu','contact no.':'0987654321'},
    {'name':'hafiya','contact no.':'1234567890'},
    {'name':'niya','contact no.':'5829471547'},
    ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Student Information'),
      centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 221, 165, 231),),body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index)
          {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
              tileColor: const Color.fromARGB(255, 225, 137, 194),
              leading: CircleAvatar(radius: 30,child: Icon(Icons.person),backgroundColor: Colors.white,),
              title: Text(studentinfo[index]['name']),
              subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [

                  Text(studentinfo[index]['contact no.']),]
              ),
              trailing: ElevatedButton(onPressed: (){}, child: Text('location'))
            ));})  

    );
  }
}

    
  
