import 'package:first/PETS_OR_LARGE.dart';
import 'package:first/large_%20info.dart';
import 'package:first/small_animal.dart';
import 'package:first/small_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Large_animal extends StatefulWidget {

  @override
  State<Large_animal> createState() => _Large_animalState();
}

class _Large_animalState extends State<Large_animal> {

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
          title: Text("Large Animal Vet", style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,),),

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
        body: SingleChildScrollView(
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
                      onChanged: (val) {
                        print(val);
                      },
                      onFieldSubmitted: (v) {
                        print(v);
                      },
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.search,),

                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                build_icon( "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Elephant_near_ndutu.jpg/247px-Elephant_near_ndutu.jpg",  "https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_1330,c_scale,q_auto/cnnarabic/2018/08/30/images/110839.jpg"),
                build_button("Elephants", "Dulphins",z: 90),

                SizedBox(height: 15,),
                build_icon( "https://fox59.com/wp-content/uploads/sites/21/2022/07/GettyImages-1300100945.jpg?w=1280",  "https://www.treehugger.com/thmb/yd3PbWGU5Fo1Tqwj-NvbPiRTUgc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1347289943-f3893070c6d5402e8af818fa93945d0b.jpg"),
                build_button("Camels", "Crocodiles",z: 90),
                SizedBox(height: 15,),
                build_icon("https://images.pexels.com/photos/2313396/pexels-photo-2313396.jpeg?cs=srgb&dl=pexels-vedran-mileti%C4%87-2313396.jpg&fm=jpg", "https://vgl.ucdavis.edu/sites/g/files/dgvnsk8836/files/styles/sf_landscape_4x3/public/2019-06/Donkey-Species-Image_1.jpg?h=5f0646e7&itok=s9SvxZHC"),
                build_button("Horses", "Donkies",z: 100),
                SizedBox(height: 15,),
                build_icon("https://a-z-animals.com/media/2020/01/Snake-Blue-viper.jpg", "https://upload.wikimedia.org/wikipedia/commons/3/38/Flamingos_Laguna_Colorada.jpg" ),
                build_button("Snakes", "Flamigos",z: 100),
                SizedBox(height: 15,),
                build_icon( "https://www.cidrap.umn.edu/sites/default/files/styles/article_detail/public/article/White-tailed%20buck-Hope%20Abrams.jpg?itok=SdvICt4s",  "https://images.unsplash.com/flagged/photo-1566127992631-137a642a90f4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"),
                build_button("Deers", "Monkeies",z: 100),
                SizedBox(height: 15,),
                build_icon("https://files.worldwildlife.org/wwfcmsprod/images/Lion_WWFGIFTS_cover_2020/magazine_small/2wafu1bmcz_b21fc8e6.jpeg",  "https://files.worldwildlife.org/wwfcmsprod/images/Tiger_resting_Bandhavgarh_National_Park_India/hero_small/6aofsvaglm_Medium_WW226365.jpg"),
                build_button("Lions", "Tigers"),
                SizedBox(height: 15,),
                build_icon( "https://optimise2.assets-servd.host/maniacal-finch/production/animals/reticulated-giraffe-01-01.jpg?w=1200&auto=compress%2Cformat&fit=crop&dm=1658951271&s=179de228b20aafcd748a5f0dc8fde776",   "https://msry.org/wp-content/uploads/%D8%A7%D9%84%D8%AC%D8%A7%D9%85%D9%88%D8%B3.png"),

                build_button("Giraffes", "Buffalos",z: 100),
                SizedBox(height: 15,),
                build_icon( "https://secrets-of-dream-interpretation.com/wp-content/uploads/2021/09/%D8%AA%D9%81%D8%B3%D9%8A%D8%B1-%D8%AD%D9%84%D9%85-%D8%B0%D8%A8%D8%AD-%D8%A7%D9%84%D8%AE%D8%B1%D9%88%D9%81-%D8%A8%D8%AF%D9%88%D9%86-%D8%AF%D9%85-%D9%84%D9%84%D8%B9%D8%B2%D8%A8%D8%A7%D8%A1-%D9%88%D8%A7%D9%84%D9%85%D8%AA%D8%B2%D9%88%D8%AC%D8%A9-%D9%88%D8%A7%D9%84%D8%AD%D8%A7%D9%85%D9%84.jpg",   "https://media.newyorker.com/photos/62506f4239f6a81b959af989/3:4/w_1499,h_2000,c_limit/brody-cow.jpg"),
                build_button("Sheeps", "Cows"),
                SizedBox(height: 15,),
                build_icon( "https://alwafd.news/images/thumbs/828/news/803cd6761dff9fbc55336ec15ab63108.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/TheCheethcat.jpg/640px-TheCheethcat.jpg"),
                build_button("Goats", "Leopards"),
                SizedBox(height: 15,),
                build_icon( "https://arabicedition.nature.com/cms/figure/index/59930785361e9e677f8b4567",  "https://i.ytimg.com/vi/YCGhWjgvCl0/maxresdefault.jpg"),
                build_button("Hippopotamus", "Pandas",z: 80),
                SizedBox(height: 15,),
                build_icon("https://vid.alarabiya.net/images/2014/04/14/e6778f60-b46a-48a0-8b67-0802261f6476/e6778f60-b46a-48a0-8b67-0802261f6476_16x9_1200x676.jpg",  "https://cdni.rt.com/media/pics/2019.01/article/5c486c8695a597df308b45fc.jpg"),
                build_button("Gorilla","Chimps"),
                SizedBox(height: 15,),
                build_icon( "https://modo3.com/thumbs/fit630x300/13739/1635658380/%D9%83%D9%8A%D9%81_%D9%8A%D9%85%D9%88%D8%AA_%D8%A7%D9%84%D8%B5%D9%82%D8%B1.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Bald_Eagle_%28Haliaeetus_leucocephalus%29_Kachemak_Bay%2C_Alaska.jpg/800px-Bald_Eagle_%28Haliaeetus_leucocephalus%29_Kachemak_Bay%2C_Alaska.jpg"),
                build_button("Hawks", "Eagles"),
                SizedBox(height: 15,),
                build_icon("https://i.guim.co.uk/img/media/8f02bb49224d9a94699b75213664bf898617c062/0_288_5315_3189/master/5315.jpg?width=700&quality=85&auto=format&fit=max&s=f6164807f61efb8855f49490c5f4f101","https://cdn1.img.sputnikarabic.ae/img/102943/97/1029439707_174:0:2903:2047_1920x0_80_0_0_635fca5c8a89eab64a1583dc96524841.jpg" ),
                build_button("Wolves", "Foxs"),

                SizedBox(height: 15,),
                build_icon("https://upload.wikimedia.org/wikipedia/commons/3/37/Killerwhales_jumping.jpg", "https://media.gemini.media/img/large/2022/7/3/2022_7_3_23_27_26_851.jpg"),
                build_button("Wheels", "Sharks"),

                SizedBox(height: 15,),
                build_icon("https://modo3.com/thumbs/fit630x300/41101/1637573378/%D9%85%D8%A7%D8%B0%D8%A7_%D9%8A%D8%A3%D9%83%D9%84_%D8%A7%D9%84%D8%AE%D9%86%D8%B2%D9%8A%D8%B1.jpg", "https://animals.sandiegozoo.org/sites/default/files/2016-08/hero_zebra_animals.jpg"),
                build_button("Pigs", "Zebras"),


              ],


            ),
          ),
        ),


    );
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