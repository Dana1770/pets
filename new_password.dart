import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class New_password extends StatelessWidget{
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: (){},color: Colors.black87,),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 40.0,left: 40,top: 50),
          child: Column(

            children: [
              Image(image: NetworkImage("https://img.freepik.com/premium-vector/bronze-lock-icon-white-background-flat-design-illustration-stock-vector-graphics_668389-92.jpg?w=2000"),width: 200,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  controller: password,
                  onChanged: (val){print(val);},
                  onFieldSubmitted: (v){print(v);},
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border:OutlineInputBorder() ,
                    suffixIcon: Icon(Icons.remove_red_eye_sharp,),

                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  controller: password,
                  onChanged: (val){print(val);},
                  onFieldSubmitted: (v){print(v);},
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirm new password",
                    border:OutlineInputBorder() ,
                    suffixIcon: Icon(Icons.remove_red_eye_sharp,),

                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text("OK")),
            ],
          ),
        ),
      ),
    );
  }

}