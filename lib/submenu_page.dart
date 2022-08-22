import 'package:flutter/material.dart';

class SubMenuPage extends StatefulWidget {
  SubMenuPage(
      {required this.image,
      required this.rating,
      required this.price,
      required this.timing,
      required this.name});
  late String image;
  late String rating;
  late String price;
  late String timing;
  late String name;
  @override
  State<SubMenuPage> createState() => _SubMenuPageState();
}

class _SubMenuPageState extends State<SubMenuPage> {
  late List topics = ["Cheese", "Veggie", "Crispy", "Topping"];
  late List topicsimage = [
    "images/cheese.png",
    "images/viggie.png",
    "images/crispy.png",
    "images/topping.png"
  ];
  late var desc = '"Tasty, delicious, and has me craving more on the first bite." to "Juicy, mounthwatering, tasty and everything you\'d ever want to savor."';
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                height: h * 0.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("images/itemback.jpg"),
                  fit: BoxFit.cover,
                )),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white.withOpacity(0.6), Colors.white],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black.withOpacity(0.75),
                        size: 24,
                      ),
                    ),
                    Text(
                      "Details",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          fontFamily: "MeriendaRegular"),
                    ),
                    Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.black.withOpacity(0.75),
                      size: 24,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 68.0),
                child: Hero(
                  tag: widget.image,
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                    height: h * 0.6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image), fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0,right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                  size: 24,
                ),
                Text(widget.rating,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        fontFamily: "MeriendaBold"),
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  "221 reviews",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: "MeriendaRegular"),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 28.0),
            child:Text(widget.name,style: TextStyle(color: Colors.black.withOpacity(0.9),fontSize: 26,fontWeight: FontWeight.w600,fontFamily: "MeriendaBold"),),
          ),
          SizedBox(height: h*0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.0),
            child:Text("taste like",style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 24,fontWeight: FontWeight.w300,fontFamily: "MeriendaBold"),),
          ),
          SizedBox(height: 0.05,
          ),
          Container(
            height: h*0.15,
            child: ListView.builder(
              shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: topics.length,
                itemBuilder:(context,index)
                {
                  return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                    child: GestureDetector(
                      onTap: ()
                      {},
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(backgroundColor: Colors.transparent,radius: 20,backgroundImage: AssetImage(topicsimage[index],),),
                              Text(" "+topics[index],style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 18,fontWeight: FontWeight.w400,fontFamily: "MeriendaRegular"),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
          SizedBox(height: h*0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.0),
            child:Text("description",style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 19,fontWeight: FontWeight.w400,fontFamily: "MeriendaBold"),),
          ),
          SizedBox(height: h*0.015,
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.0),
            child:Text(desc,style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 18,fontWeight: FontWeight.w300,fontFamily: "MeriendaRegular"),),
          ),
          SizedBox(height: h*0.03,
          ),
          Center(child: Text("HUNGRY  ???",style: TextStyle(color: Colors.black.withOpacity(0.9),fontSize: 22,fontWeight: FontWeight.bold,fontFamily: "MeriendaBold"),),
          ),
          SizedBox(height: h*0.02,
          ),
          GestureDetector(
            onTap: ()
            {},
            child: Container(
              height: h*0.08,
              margin: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(child: Text("Oder now",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "MeriendaBold"),),
              ),
            ),
          ),
          SizedBox(height: h*0.02,
          ),
          Center(child: Text("lighting fast delivery within 10-12 min",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 14,fontWeight: FontWeight.w300,fontFamily: "MeriendaRegular"),),
          ),
          SizedBox(height: h*0.02,
          ),
        ],
      ),
    );
  }
}
