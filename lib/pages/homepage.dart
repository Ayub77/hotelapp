import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  
    static final String id = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/ic_header.jpg"),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(.6),
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.2),
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Best Hotel Ever",style: TextStyle(color: Colors.white,fontSize: 30),),
                      SizedBox(height: 50,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 70),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search for hotels...",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 28)
                          ),
                        ),
                      ),
                      SizedBox(height: 50,)
                    ],
                  ),
                ),
              ),

            SizedBox(height: 30,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Busines Hotels",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),),

                SizedBox(height: 20,),


                Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    
                    children: [
                      makeItem("assets/images/ic_hotel1.jpg", "Hotel  1"),
                      makeItem("assets/images/ic_hotel2.jpg", "Hotel  2"),
                      makeItem("assets/images/ic_hotel3.jpg", "Hotel  3"),
                      makeItem("assets/images/ic_hotel4.jpg", "Hotel  4"),
                      makeItem("assets/images/ic_hotel5.jpg", "Hotel  5"),
                      makeItem("assets/images/ic_hotel3.jpg", "Hotel  6"),
                      makeItem("assets/images/ic_hotel1.jpg", "Hotel  7"),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Airport Hotel",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),),

                SizedBox(height: 20,),


                Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    
                    children: [
                      makeItem("assets/images/ic_hotel1.jpg", "Hotel  1"),
                      makeItem("assets/images/ic_hotel2.jpg", "Hotel  2"),
                      makeItem("assets/images/ic_hotel3.jpg", "Hotel  3"),
                      makeItem("assets/images/ic_hotel4.jpg", "Hotel  4"),
                      makeItem("assets/images/ic_hotel5.jpg", "Hotel  5"),
                      makeItem("assets/images/ic_hotel3.jpg", "Hotel  6"),
                      makeItem("assets/images/ic_hotel1.jpg", "Hotel  7"),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Resort Hotel",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),),

                SizedBox(height: 20,),


                Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    
                    children: [
                      makeItem("assets/images/ic_hotel1.jpg", "Hotel  1"),
                      makeItem("assets/images/ic_hotel2.jpg", "Hotel  2"),
                      makeItem("assets/images/ic_hotel3.jpg", "Hotel  3"),
                      makeItem("assets/images/ic_hotel4.jpg", "Hotel  4"),
                      makeItem("assets/images/ic_hotel5.jpg", "Hotel  5"),
                      makeItem("assets/images/ic_hotel3.jpg", "Hotel  6"),
                      makeItem("assets/images/ic_hotel1.jpg", "Hotel  7"),
                    ],
                  ),
                )

                ],
              ),
            )



            ],

          ),
        ),
      )   
       );
  
  }
Widget makeItem(image , title){
  return AspectRatio(
    aspectRatio: 1.4/1,
    child: Container(
      margin: EdgeInsets.only(right: 15),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),
       image: DecorationImage(
         image: AssetImage(image),
         fit: BoxFit.cover
       ),
     ),
     child: Container(
       padding: EdgeInsets.all(15),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         gradient: LinearGradient(
           begin: Alignment.bottomRight,
           colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2) ,
           ]
         )
       ),
       child: Align(
         alignment: Alignment.bottomLeft,
         child: Row(
           children: [
             Text(title,style: TextStyle(color: Colors.white,fontSize: 25),),
             SizedBox(width: 75,),
             Icon(Icons.favorite,color: Colors.red,)
           ],
         )
       ),
     ),
     
     ),
    );
}




}