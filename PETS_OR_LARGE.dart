import 'package:first/Large_animals.dart';
import 'package:first/large_%20info.dart';
import 'package:first/small_animal.dart';
import 'package:first/small_info.dart';
import 'package:flutter/material.dart';

class choice extends StatefulWidget{
  @override
  State<choice> createState() => _choiceState();

}

class _choiceState extends State<choice> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return  Scaffold(

       appBar: AppBar(
         backgroundColor: Colors.brown.withGreen(6).withOpacity(0.5),
         //leading: BackButton(onPressed: (){},),
         title: Text("Petty world",style: TextStyle(fontSize: 25,
         fontWeight: FontWeight.bold,
         letterSpacing: 2,),),

       ),


     endDrawer: Drawer(
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
     ),
       body:Padding(
         padding: const EdgeInsets.all(10.0),
         child: Container(
           alignment: Alignment.center,
           child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(

               children: [
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Container(
                     height: 40,
                     child: TextFormField(
                       onChanged: (val){print(val);},
                       onFieldSubmitted: (v){print(v);},
                       decoration: InputDecoration(
                         hintText: "Search",
                         border:OutlineInputBorder() ,
                         suffixIcon: Icon(Icons.search,),

                       ),
                       keyboardType: TextInputType.visiblePassword,
                     ),
                   ),
                 ),
                 SizedBox(height: 10,),
                 Container(
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                     clipBehavior: Clip.antiAliasWithSaveLayer,
                     child: Image(image: NetworkImage("https://media.istockphoto.com/id/1283692900/photo/group-of-different-kind-of-pets-like-cat-dog-rabbit-mouse-chinchilla-guinea-pig-bird-and-fish.jpg?s=612x612&w=0&k=20&c=oRyN_o5XT6UYFtwidjPxYFN9T5v0dBvu4CCAZUUJtW4="),fit: BoxFit.cover,)),

                     ElevatedButton(onPressed: (){
                       Navigator.push(context,
                         MaterialPageRoute(
                             builder: (context)=>Small_animall()),
                       );
                     }, child:Text("small animal vet",style: TextStyle(

                       fontSize: 30,
                       letterSpacing: 3,
                       fontWeight: FontWeight.bold,

                     ),),
                       style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all(Colors.brown.withGreen(6).withOpacity(0.5)),
                     ),
                     ),
                     OutlinedButton(onPressed: (){}, child:Text("Vet Doctors",style: TextStyle(
                       fontSize: 20,
                       letterSpacing: 3,
                       fontWeight: FontWeight.bold,

                     ),),
                       style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all(Colors.brown.withGreen(6).withOpacity(0.8)),
                         foregroundColor: MaterialStateProperty.all(Colors.white),
                       ),),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("for more info of small pets",style:TextStyle(fontSize: 15,color: Colors.black87),),
                         TextButton(onPressed: (){
                           Navigator.push(context,
                             MaterialPageRoute(
                                 builder: (context)=>small_info()),
                           );
                         }, child: Text("click here",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue[900]),)),
                       ],
                     )
                 ,

                 SizedBox(height: 3,),
                 Container(
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                     clipBehavior: Clip.antiAliasWithSaveLayer,
                     child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiFzkffdaNukyCr-IEP5fi8uzc1BoXNZkrYSUHEr43hgstTRv5EF5ReYAAYvdS-bAHLNo&usqp=CAU"),fit: BoxFit.cover,)),

                     ElevatedButton(onPressed: (){
                       Navigator.push(context,
                         MaterialPageRoute(
                             builder: (context)=>Large_animal()),
                       );
                     }, child:Text("Large animal vet",
                       style: TextStyle(
                       fontSize: 30,
                       letterSpacing: 3,
                       fontWeight: FontWeight.bold,

                     ),),style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all(Colors.brown.withGreen(6).withOpacity(0.5)),
                     ),),
                 OutlinedButton(onPressed: (){}, child:Text("Large Animal Doctors",style: TextStyle(
                   fontSize: 20,
                   letterSpacing: 3,
                   fontWeight: FontWeight.bold,

                 ), ),
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all(Colors.brown.withGreen(6).withOpacity(0.8)),
           foregroundColor: MaterialStateProperty.all(Colors.white),
         ),),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("for more info of large animals",style:TextStyle(fontSize: 15,color: Colors.black87),),
                     TextButton(onPressed: (){
                       Navigator.push(context,
                         MaterialPageRoute(
                             builder: (context)=>Large_info()),
                       );
                     }, child: Text("click here",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue[900]),)),
                   ],
                 )

               ],
             ),
           ),
         ),
       ) ,


   );
  }
}