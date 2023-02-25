import 'package:first/modules/large_animals/Large_animals.dart';
import 'package:first/modules/PETS_OR_LARGE/PETS_OR_LARGE.dart';
import 'package:first/modules/large_info/large_%20info.dart';
import 'package:first/modules/small_info/small_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class Small_animall extends StatefulWidget{
  @override
  State<Small_animall> createState() => _Small_animallState();
}

class _Small_animallState extends State<Small_animall> {
 // Large_animal l=Large_animal();
  bool is_pass=false;
var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
  return
  Scaffold(
    appBar: AppBar(
        backgroundColor: Colors.brown.withGreen(6).withOpacity(0.5),
        leading: BackButton(onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(
                builder: (context)=>choice()),
          );
        },),
        title: Text("Small Animal Vet",style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,),),

      ),
    endDrawer:Draw(context),
    body:SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 40,
                child:password_field(password,"password",
                is_password: is_pass,
                  suffix:IconButton(icon: Icon(Icons.remove_red_eye_sharp,),
                    onPressed: () {
                      setState() {
                        is_pass=!is_pass;

                      }
                    },),),
              ),
            ),
            SizedBox(height: 10,),
           build_icon("https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322868/golden-retriever-puppy.jpg", "https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg"),
           build_button("Dogs","Cats" ),
            SizedBox(height: 15,),
            build_icon("https://www.allaboutbirds.org/news/wp-content/uploads/2020/07/STanager-Shapiro-ML.jpg", "https://www.thepetexpress.co.uk/blog-admin/wp-content/uploads/2012/05/shutterstock_722171287.jpg"),
            build_button("Birds", "Rabitts"),
            SizedBox(height: 15,),
            build_icon("https://www.balisafarimarinepark.com/wp-content/uploads/2022/11/AdobeStock_345118478-copy-1440x961-1-e1613512040649-768x644-1.jpg", "https://media.npr.org/assets/img/2016/06/17/whatafishknows_wide-e2b0800c202b1751ffddfae6394e3c7825e7d333-s1400-c100.jpg"),
            build_button("Guinea pigs", "Fishs",z: 90),
            SizedBox(height: 15,),
            build_icon("https://cdn.shopify.com/s/files/1/0137/6210/1348/collections/112991633508_1600x.jpg?v=1629297835", "https://www.woodlandtrust.org.uk/media/50820/house-mouse-wtml-1062551-amy-lewis.jpg"),
            build_button("Turtles","Mouses",z: 110),
            SizedBox(height: 15,),
            build_icon("https://mediaaws.almasryalyoum.com/news/verylarge/2016/01/11/404919_0.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Australia_green_tree_frog_%28Litoria_caerulea%29_crop.jpg/1200px-Australia_green_tree_frog_%28Litoria_caerulea%29_crop.jpg"),
            build_button("Chameleons", "Frags",z: 90),
          ],


        ),
      ),

  ),);
  }
}