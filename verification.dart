import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Verification_code extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: (){},color: Colors.black87,),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 40.0,left: 40,top: 120),
        child: Column(

          children: [
            Image(image: NetworkImage("https://img.freepik.com/free-vector/employee-working-office-thinking-solutions-problem-solving-business-theme_1150-37473.jpg"),width: 200,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                onChanged: (val){print(val);},
                onFieldSubmitted: (v){print(v);},
                decoration: InputDecoration(
                  hintText: "Verification code",
                  border:OutlineInputBorder() ,


                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text("OK")),
          ],
        ),
      ),
    );
  }

}
