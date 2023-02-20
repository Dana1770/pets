import 'package:first/PETS_OR_LARGE.dart';
import 'package:first/sign%20up.dart';
import 'package:first/verification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Main extends StatefulWidget{
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {

    super.initState();
  }
  var email_controller=TextEditingController();

  var password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 55.0,left: 30,right: 30,bottom: 3),
              child: Column(
                  children: [

                     Container(
                        color: Colors.white,
                        alignment: Alignment.topCenter,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Text("Petty World",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 35,
                                  letterSpacing: 7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,

                                ),),
                              SizedBox(height: 12,),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image(image: NetworkImage("https://www.treehugger.com/thmb/PRa1LO823J3IvsZKxqGK_hAD5D4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__mnn__images__2019__01__ConfusedMistakenAnimalsMain-aed39c615fdf4425ab57e3216efdf119.jpg"),


                                ),
                              ),
                              TextButton(onPressed: (){}, child: Row(
                                children: [
                                  Image(image: AssetImage("images/google.png"),height: 20,width: 20,),
                                  SizedBox(width: 5,),
                                  Text("Login with Google",style: TextStyle(fontSize: 16,),),
                                ],
                              )),
                             TextButton(onPressed: (){}, child: Row(
                               children: [
                                 Icon(Icons.facebook,size: 25,),
                                 SizedBox(width: 5,),
                                 Text("Login with Facebook",style: TextStyle(fontSize: 16,),),
                               ],
                             )),
                              TextFormField(
                                controller: email_controller,
                                onChanged: (val){print(val);},
                                onFieldSubmitted: (v){print(v);},
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  border:OutlineInputBorder() ,


                                ),
                                keyboardType: TextInputType.visiblePassword,
                              ),
                              SizedBox(height: 5,),
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
                              SizedBox(height: 15,),
                              Container(
                                  height: 40,
                                  width: 100,

                                  child: ElevatedButton(onPressed: (){print(email_controller.text);
                                  print(password.text);
                                  Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context)=>choice()),
                                  );
                                  }, child:Text("login"),)),
                             TextButton(onPressed: (){
                               Navigator.push(context,
                                 MaterialPageRoute(
                                     builder: (context)=>Verification_code()),
                               );
                             }, child: Text("forget password ?"),
                               //style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue.withOpacity(0.9))
                               ),
                             // SizedBox(height: 12,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don't have an account ?"),
                                  //style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue.withOpacity(0.9))


                                  TextButton(onPressed: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context)=>SignUP()),
                                    );
                                  }, child: Text("Sign up")),
                                ],
                              ),

                              //SizedBox(height: 10,),
                            ],
                          ),
                        ),
                      ),


                  ],
                ),

            ),
          ),



    );
  }
}