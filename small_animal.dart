import 'package:first/Large_animals.dart';
import 'package:first/PETS_OR_LARGE.dart';
import 'package:first/large_%20info.dart';
import 'package:first/small_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Small_animall extends StatefulWidget{
  @override
  State<Small_animall> createState() => _Small_animallState();
}

class _Small_animallState extends State<Small_animall> {
 // Large_animal l=Large_animal();

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
}