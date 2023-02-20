import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.withGreen(6).withOpacity(0.5),

        leading: BackButton(onPressed: (){},),
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
             /* CircleAvatar(radius: 20,child:Icon(Icons.person) ,backgroundColor: Colors.grey,foregroundColor: Colors.white,),*/
              /*SizedBox(width: 10,),*/
              Text("Doctor",style: TextStyle(fontSize: 25),),
            ],

        ),
        titleSpacing: 5,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings))
        ],

      ),
      body: Column(
        children: [
          TextFormField(),
        ],
      ),
    ),
  );
  }

}