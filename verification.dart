import 'package:first/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Verification_code extends StatelessWidget{
  var code=TextEditingController();
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
            small_image("https://img.freepik.com/free-vector/employee-working-office-thinking-solutions-problem-solving-business-theme_1150-37473.jpg"),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: defult_text_field("Verification code", code,  "Verification code isn't valid"
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
