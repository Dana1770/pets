import 'package:first/modules/large_animals/Large_animals.dart';
import 'package:first/modules/large_info/large_%20info.dart';
import 'package:first/modules/small_animal/small_animal.dart';
import 'package:first/modules/small_info/small_info.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class choice extends StatefulWidget{
  @override
  State<choice> createState() => _choiceState();

}

class _choiceState extends State<choice> {
  var Search=TextEditingController();
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar(
         backgroundColor: Colors.brown.withGreen(6).withOpacity(0.5),
         title: Text("Petty world",style: TextStyle(fontSize: 25,
         fontWeight: FontWeight.bold,
         letterSpacing: 2,),),

       ),
     endDrawer:Draw(context),
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
                     child:
                     defult_text_field(
                       "search", Search,
                        " ",),
                   ),
                 ),
                 SizedBox(height: 10,),
                 Large_image("https://media.istockphoto.com/id/1283692900/photo/group-of-different-kind-of-pets-like-cat-dog-rabbit-mouse-chinchilla-guinea-pig-bird-and-fish.jpg?s=612x612&w=0&k=20&c=oRyN_o5XT6UYFtwidjPxYFN9T5v0dBvu4CCAZUUJtW4="),
                 big_button(context, "small animal vet",Small_animall()),
                 out_lined_button("Vet Doctors"),
                 more_info(context,"for more info of small pets" ,small_info()),
                 SizedBox(height: 3,),
                 Large_image("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiFzkffdaNukyCr-IEP5fi8uzc1BoXNZkrYSUHEr43hgstTRv5EF5ReYAAYvdS-bAHLNo&usqp=CAU"),
                 big_button(context, "Large animal vet",Large_animal() ),
                 out_lined_button("Large Animal Doctors"),
                 more_info(context,"for more info of large animals" ,Large_info()),


               ],
             ),
           ),
         ),
       ) ,
   );}}