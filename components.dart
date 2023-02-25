import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../modules/PETS_OR_LARGE/PETS_OR_LARGE.dart';
import '../../modules/large_animals/Large_animals.dart';
import '../../modules/large_info/large_ info.dart';
import '../../modules/small_animal/small_animal.dart';
import '../../modules/small_info/small_info.dart';
Widget build_icon(String p1,String p2 ){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 10),
          child: ElevatedButton(onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Colors.white),
              iconSize: MaterialStateProperty.all(70),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(image: NetworkImage(
                  p1),
                fit: BoxFit.cover, height: 150, width: 145,),
            ),),
        ),
        ElevatedButton(onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Colors.white),
            iconSize: MaterialStateProperty.all(100),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image(image: NetworkImage(
                p2),
              fit: BoxFit.cover, height: 150, width: 145,),
          ),),
      ],
    ),
  ) ;

}
Widget build_button(String t1,String t2,{double z=120.0} ){
  return Row(

    children: [
      SizedBox(width: 50,),
      Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: ElevatedButton(
          onPressed: () {}, child: Text(t1),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors
                .brown.withGreen(6).withOpacity(0.5)),
          ),),
      ),
      SizedBox(width: z,),
      Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: ElevatedButton(
          onPressed: () {}, child: Text(t2),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors
                .brown.withGreen(6).withOpacity(0.5)),
          ),),
      ),
    ],
  ) ;

}
Widget Draw(BuildContext context)=>Drawer(
width: 200,
child: Padding(
padding: const EdgeInsets.all(35.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [


Column(
children: [
CircleAvatar(radius: 30, child: Image(
image: NetworkImage(
"https://www.gardeningknowhow.com/wp-content/uploads/2019/09/flower-color.jpg"),
fit: BoxFit.cover
,),),
SizedBox(height: 7,),
Text("dana abdallah1234",
style: TextStyle(fontWeight: FontWeight.bold),),
],
),


SizedBox(height: 10,),
TextButton(
child: Text("Home", style: TextStyle(
fontSize: 17, color: Colors.blue[900],),),
onPressed: () {
Navigator.push(context,
MaterialPageRoute(
builder: (context)=>choice()),
);
},),
SizedBox(height: 10,),
TextButton(
child: Text("Profile", style: TextStyle(
fontSize: 17, color: Colors.blue[900],),),
onPressed: () {},),
SizedBox(height: 10,),
TextButton(
child: Text("Vet Animals", style: TextStyle(
fontSize: 17, color: Colors.blue[900],),),
onPressed: () {
Navigator.push(context,
MaterialPageRoute(
builder: (context)=>Small_animall()),
);
},),
SizedBox(height: 10,),
TextButton(
child: Text("Large Animals", style: TextStyle(
fontSize: 17, color: Colors.blue[900],),),
onPressed: () {
Navigator.push(context,
MaterialPageRoute(
builder: (context)=>Large_animal()),
);
},),
SizedBox(height: 10,),
TextButton(
child: Text("Vet Animals Info", style: TextStyle(
fontSize: 15, color: Colors.blue[900],),),
onPressed: () {
Navigator.push(context,
MaterialPageRoute(
builder: (context)=>small_info()),
);
},),
SizedBox(height: 10,),
TextButton(
child: Text("Large Animals Info", style: TextStyle(
fontSize: 13, color: Colors.blue[900],),),
onPressed: () {
Navigator.push(context,
MaterialPageRoute(
builder: (context)=>Large_info()),
);
},),
SizedBox(height: 10,),
TextButton(
child: Text("Vet Animals Doctors", style: TextStyle(
fontSize: 15, color: Colors.blue[900],),),
onPressed: () {},),
SizedBox(height: 10,),
TextButton(
child: Text("Large Animals Doctors", style: TextStyle(
fontSize: 15, color: Colors.blue[900],),),
onPressed: () {},),
SizedBox(height: 10,),
Padding(
padding: const EdgeInsets.only(right: 12.0),
child: TextButton(
child: Text("For more info", style: TextStyle(
fontSize: 15, color: Colors.blue[900],),),
onPressed: () {},),
),
],
),
),
);
Widget big_button(BuildContext context,String t,Widget fun)=> ElevatedButton(
  onPressed: (){
  Navigator.push(context,
    MaterialPageRoute(
        builder: (context)=>fun),
  );
}, child:Text(t,
  style: TextStyle(

    fontSize: 30,
    letterSpacing: 3,
    fontWeight: FontWeight.bold,

  ),),
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.brown.withGreen(6).withOpacity(0.5)),
  ),
);
Widget out_lined_button(String t)=>OutlinedButton(
  onPressed: (){},
  child:Text(t,style: TextStyle(
  fontSize: 20,
  letterSpacing: 3,
  fontWeight: FontWeight.bold,

), ),
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.brown.withGreen(6).withOpacity(0.8)),
    foregroundColor: MaterialStateProperty.all(Colors.white),
  ),);
Widget more_info(BuildContext context,String t,Widget W)=>Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(t,style:TextStyle(fontSize: 15,color: Colors.black87),),
    TextButton(onPressed: (){
      Navigator.push(context,
        MaterialPageRoute(
            builder: (context)=>W),
      );
    }, child: Text("click here",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue[900]),)),
  ],
);
Widget Large_image(String t)=> Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Image(image: NetworkImage(t),fit: BoxFit.cover,));
Widget small_image(String t)=>Container(
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
  clipBehavior: Clip.antiAliasWithSaveLayer,
  child: Image(image: NetworkImage(t),
    width: 220,

  ),
);
Widget defult_text_field(String t,var controller,String t2)=>TextFormField(
    controller: controller,
   validator: (value){
      if(value!.isEmpty ){
      return t2;
      }
      else {
        return null;
      } },
    decoration: InputDecoration(
      labelText: t,
      border: OutlineInputBorder() ,
  
    ),
    onFieldSubmitted: (v){
      print(v);
      },
    keyboardType: TextInputType.emailAddress,
    onChanged: (val){print(val);},

);
Widget password_field(var controller, String t, {bool is_password = true,required Widget suffix}) =>
      TextFormField(

        validator: (value) {
          if (value!.isEmpty || !RegExp(
              r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$')
              .hasMatch(value!)) {
            return """Invalid Password \n
            At least one upper case English letter\n
            At least one lower case English letter\n
            At least one digit\n
            At least one special character\n
            Minimum eight in length\n""";
          }
          else {
            return null;
          }
        },
        controller: controller,
        onChanged: (val) {
          print(val);
        },
        onFieldSubmitted: (v) {
          print(v);
        },
        obscureText: is_password,
        decoration: InputDecoration(
          labelText: t,
          border: OutlineInputBorder(),
          suffixIcon: suffix,


        ),
        keyboardType: TextInputType.visiblePassword,
      );

