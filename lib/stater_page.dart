import 'package:burger_app/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StaterPage extends StatefulWidget {
  const StaterPage({Key? key}) : super(key: key);

  @override
  State<StaterPage> createState() => _StaterPageState();
}

class _StaterPageState extends State<StaterPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/bb2.jpeg",
              fit: BoxFit.fill,
              color: Colors.black.withOpacity(0.35),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            children: [
              SizedBox(
                height: h * 0.1,
              ),
              Center(
                child: Icon(
                  FontAwesomeIcons.crown,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Center(
                child: Text(
                  "Burger",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: "MeriendaBold"),
                ),
              ),
              Center(
                child: Text(
                  "Queen",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: "MeriendaBold"),
                ),
              ),
              SizedBox(
                height: h * 0.26,
              ),
              Center(
                child: Text(
                  "I 'M tasty",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      fontFamily: "MeriendaRegular"),
                ),
              ),
              Center(
                child: Text(
                  "and",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      fontFamily: "MeriendaRegular"),
                ),
              ),
              Center(
                child: Text(
                  "you know it !",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      fontFamily: "MeriendaRegular"),
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage()),
                  );
                },
                child: Container(
                  height: h * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.lunch_dining,
                        color: Colors.white,
                      ),
                      Text(
                        " Grab some",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "MeriendaBold"),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Center(
                  child: Text(
                "Mood & food",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                    fontFamily: "MeriendaRegular"),
              ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
