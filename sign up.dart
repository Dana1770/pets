import 'package:first/PETS_OR_LARGE.dart';
import 'package:first/start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget{
  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override

  var email_controller=TextEditingController();

  var full_name=TextEditingController();

  var user_name=TextEditingController();

  var password=TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:  SafeArea(
       child: Padding(
         padding:  EdgeInsets.only(top: 25.0,left: 30,right: 30,bottom: 3),

           child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
               children: [
                 SingleChildScrollView(
                   scrollDirection: Axis.vertical,
                     child: Container(

                       alignment: Alignment.center,
                       child:
                       Column(
                         children: [
                           Text("Petty World",
                             style: TextStyle(
                               color: Colors.black,
                               fontSize: 30,
                               letterSpacing: 6,
                               fontWeight: FontWeight.w500,
                               fontStyle: FontStyle.italic,

                             ),),
                           SizedBox(height:5 ,),
                           Text("sign up to get Consult from a veterinarian",),
                           SizedBox(height: 8,),
                           Container(
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                             clipBehavior: Clip.antiAliasWithSaveLayer,
                             child: Image(image: NetworkImage("https://theveganreview.com/wp-content/uploads/2021/07/WorldAnimalDay2-1068x765.jpg"),
                               width: 220,

                             ),
                           ),
                          SizedBox(height: 5,),
                          ElevatedButton(onPressed: (){

                          },
                            child: Row(
                            children: [
                              Icon(Icons.facebook),
                              SizedBox(width: 5),
                              Text("login with facebook")
                            ],
                          ),),
                           //SizedBox(height: 3,),
                           SingleChildScrollView(
                             scrollDirection: Axis.horizontal,
                             child: Row(
                               children: [
                                 Text("______________________"),
                                 SizedBox(width: 5,),
                                 Text("OR"),
                                 SizedBox(width: 5,),
                                 Text("_______________________"),
                               ],
                             ),
                           ),
                           SizedBox(height: 10,),
                           TextFormField(
                             controller: email_controller,
                            decoration: InputDecoration(
                              labelText: "Mobile Number or Email",
                              border:OutlineInputBorder() ,

                            ),
                             onFieldSubmitted: (v){print(v);},
                             keyboardType: TextInputType.emailAddress,
                             onChanged: (val){print(val);},
                           ),
                           SizedBox(height: 7,),
                           TextFormField(
                             onChanged: (val){print(val);},
                             controller: full_name,
                             onFieldSubmitted: (v){print(v);},
                             decoration: InputDecoration(
                               labelText: "Full Name",
                               border:OutlineInputBorder() ,
                             ),
                             keyboardType: TextInputType.name,
                           ),
                           SizedBox(height: 7,),
                           TextFormField(
                             controller: user_name,
                             onChanged: (val){print(val);},
                             onFieldSubmitted: (v){print(v);},
                             decoration: InputDecoration(
                              labelText: "User Name",
                               border:OutlineInputBorder() ,

                             ),
                             keyboardType: TextInputType.name,
                           ),
                           SizedBox(height: 7),
                           TextFormField(
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
                          SizedBox(height: 10,),
                           Container(
                             height: 40,
                               width: 100,

                               child: ElevatedButton(onPressed: (){print(email_controller.text);
                                 print(full_name.text);
                                 print(user_name.text);
                                 print(password.text);
                               Navigator.push(context,
                                 MaterialPageRoute(
                                     builder: (context)=>choice()),
                               );
                               }, child:Text("Sign up"),)),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("have an account ?",style: TextStyle(fontSize: 14,letterSpacing: 1),),
                               TextButton(onPressed: (){

                                  Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context)=>Main()),
                                 );
                               }, child: Text("log in",style: TextStyle(fontSize: 15),)),
                             ],
                           ),




                         ],
                       ),
                     ),

                 ),
               ],
             ),
           ),

       ),
     ),
   );

  }
}