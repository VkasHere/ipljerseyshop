import 'package:flutter/Material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iplshop/contents.dart';
import 'package:iplshop/iplteamcircle.dart';
import 'package:google_fonts/google_fonts.dart';
class homepage extends StatefulWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
final controller=CarouselController();
 int current=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10,top: 1),
                width:MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(flex:2,child: Image.network("https://i.postimg.cc/HnL9Z41w/menu.png",width: 25,height: 25,),),
                    Expanded(
                      flex:25,
                      child:Container(
                        alignment: Alignment.center,
                        child:Image.network("https://i.postimg.cc/4xWpYHDq/IPL-Logo-PNG-foqmcj.png",width: 80,height: 80,),
                      ),
                    ),  
                 Expanded(flex:2,child:Container(),),
    
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                    iplteamcircle("https://i.postimg.cc/m2F4nxn8/pinpng-com-csk-logo-png-212782.png", 0),
                    const SizedBox(width: 20,),
                    iplteamcircle("https://i.postimg.cc/k6MNWWYq/gujrat-titans-png-logo.png[/img][/url]", 1),
                    const SizedBox(width: 20,),
                    iplteamcircle("https://i.postimg.cc/34LX1Wzp/Png-Item-776155.png[/img][/url]", 2),
                    const SizedBox(width: 20,),
                    iplteamcircle("https://i.postimg.cc/sBzf6mrd/Daco-4175849.png", 3),
                    const SizedBox(width: 20,),
                    iplteamcircle("https://i.postimg.cc/7PT6NXCS/pinpng-com-cricket-vector-png-1160681-1.png", 4),
                    const SizedBox(width: 20,),
                    iplteamcircle("https://i.postimg.cc/Kc04byJb/pinpng-com-cricket-vector-png-114670-1.png", 5),
                    const SizedBox(width: 20,),
                    iplteamcircle("https://i.postimg.cc/7LNwNgR4/pinpng-com-sunrisers-hyderabad-logo-png-123160-1.png", 6),
                    const SizedBox(width: 20,),
                    iplteamcircle("https://i.postimg.cc/Z9Lb1Nb9/kisspng-2018-indian-premier-league-chennai-super-kings-mum-cricket-5abca6a250f815-157478871522312866.png", 7),
                    const SizedBox(width: 20,),
                    iplteamcircle("https://i.postimg.cc/3dywdWB6/Punj.png", 8),
                    const SizedBox(width: 20,),
                    iplteamcircle("https://i.postimg.cc/cKSB4pQK/lucknow-supergiants-png-logo.png[/img][/url]", 9),
                    ],
                  ),
                ),
              ),
               Container(
                 alignment: Alignment.topLeft,
                 margin: EdgeInsets.only(top: 25,left: 15),
                 child: const Text("Jerseys",style: TextStyle(color: Colors.black,fontSize: 28,fontFamily: 'Gilroy',fontWeight: FontWeight.bold),)),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child:SingleChildScrollView(
              scrollDirection: Axis.horizontal,  
                child: Row(
                  children: 
                    List.generate(con1.length,(index){
                      return Container(
                        height: 200,
                          decoration:
                           BoxDecoration(color: Colors.white,
                           borderRadius: BorderRadius.circular(8),
                           boxShadow: [BoxShadow(
                           color: Colors.grey.withOpacity(0.3),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: const Offset(0, 3)
                           )]),
                          margin: const EdgeInsets.only(left: 20,right: 10),
                          width:150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 15),
                                height:120,
                                width: 150,
                                decoration: BoxDecoration(
                                image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(con1[index].img)
                                ),
                                 borderRadius: const BorderRadius.all(Radius.circular(8))   
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                  padding: const EdgeInsets.only(left:10,top: 5),
                                  child: Text(con1[index].name,style: GoogleFonts.lato(
                                  textStyle: const TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),),),
                                    ),
                                    SizedBox(height: 7),
                                  Container(
                                  color: Colors.black,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.only(right:5,top: 5),
                                  child:  Text(con1[index].price,style: GoogleFonts.sourceSans3(
                                  textStyle: const TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),)),
                                  ),
                                   ],
                              )
                            ],
                          ),
                      );
                    } )
                  
                ),
              ),
              ),
            const SizedBox(height: 20,),
            Container(
                 alignment: Alignment.topLeft,
                 margin: EdgeInsets.only(top: 25,left: 15),
                 child: const Text("Merchandise",style: TextStyle(color: Colors.black,fontSize: 28,fontFamily: 'Gilroy',fontWeight: FontWeight.bold),)),
          
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child:SingleChildScrollView(
              scrollDirection: Axis.horizontal,  
                child: Row(
                  children: 
                    List.generate(con1.length,(index){
                      return Container(
                        height: 200,
                          decoration:
                           BoxDecoration(color: Colors.white,
                           borderRadius: BorderRadius.circular(8),
                           boxShadow: [BoxShadow(
                           color: Colors.grey.withOpacity(0.3),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: const Offset(0, 3)
                           )]),
                          margin: const EdgeInsets.only(left: 20,right: 10),
                          width:150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 15),
                                height:120,
                                width: 150,
                                decoration: BoxDecoration(
                                image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(con2[index].img)
                                ),
                                 borderRadius: const BorderRadius.all(Radius.circular(8))   
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                  padding: const EdgeInsets.only(left:10,top: 5),
                                  child: Text(con2[index].name,style: GoogleFonts.lato(
                                  textStyle: const TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),),),
                                    ),
                                    const SizedBox(height: 7),
                                  Container(
                                  color: Colors.black,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.only(right:5,top: 5),
                                  child:  Text(con2[index].price,style: GoogleFonts.sourceSans3(
                                  textStyle: const TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),)),
                                  ),
                                   ],
                              )
                            ],
                          ),
                      );
                    } )
                  
                ),
              ),
              ),
             
            Container(
                 alignment: Alignment.topLeft,
                 margin: EdgeInsets.only(top: 25,left: 15),
                 child: const Text("Equipments",style: TextStyle(color: Colors.black,fontSize: 28,fontFamily: 'Gilroy',fontWeight: FontWeight.bold),)),
           const SizedBox(height: 40,),
            CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                autoPlayInterval: const Duration(seconds: 1),
                height: 270 ,
                enableInfiniteScroll: true,
                aspectRatio: 16/9,
                viewportFraction: 0.6,
                autoPlay: true,
                enlargeCenterPage: false,
                onPageChanged: (index,reason){
                setState(() {
                current=index;
              });
                }
                ),
                 items:con3.map((e){
                  return Builder(
                  builder:(BuildContext context){
                  return Container(
                  width: MediaQuery.of(context).size.width-180,
                  decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                  ),
                  child:SingleChildScrollView(
                    child: Column(
                      children: [
                         Container(
                      height: 180,
                      margin: const EdgeInsets.all(15),
                      clipBehavior:Clip.hardEdge,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.network(e.img,fit: BoxFit.cover,),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text(e.name,style: const TextStyle(fontFamily: 'Gilroy',fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)),
                        ],
                      )
                      ],
                    ),
                  ),
              );
              }
            );
          }).toList(),
              ),
          const SizedBox(height: 20,),
          ],
          ),
        ),
      ),
    );
  }
}