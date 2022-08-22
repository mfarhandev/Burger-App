import 'package:burger_app/submenu_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late List images = [
    "images/bug1.png",
    "images/bug3.png",
    "images/bug2.png",
    "images/bug4.png"
  ];
  late List name = [
    "Maharaja maccy",
    "Cheese brust",
    "Extra crunchy",
    "Veggie patty"
  ];
  late List rating = ["4.8", "4.2", "4.7", "4.3"];
  late List price = ["30/only", "25/only", "35/only", "20/only"];
  late List timing = ["5-6 min", "4-5 min", "6-7 min", "5-7 min"];
  late List topics = ["Cheese", "Veggie", "Crispy", "Topping"];
  late List topicsimage = [
    "images/cheese.png",
    "images/viggie.png",
    "images/crispy.png",
    "images/topping.png"
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: 80.0,
        leading: Icon(
          Icons.short_text,
          color: Colors.black.withOpacity(0.75),
          size: 40.0,
        ),
        title: Icon(
          Icons.lunch_dining_rounded,
          color: Colors.orange,
          size: 40.0,
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("images/explore2.jpeg"),
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        onTap: (value) {},
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Account"),
          BottomNavigationBarItem(
              icon: FaIcon(
                Icons.shopping_cart,
                size: 30,
              ),
              label: "Current"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              label: "Compeleted"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: "Cancel"),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          SizedBox(
            height: h * 0.02,
          ),
          Text(
            "Find and order",
            style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 24,
                fontWeight: FontWeight.w300,
                fontFamily: "MeriendaRegular"),
          ),
          Row(
            children: [
              Text(
                "burger for you",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    fontFamily: "MeriendaRegular"),
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 15.0,
                backgroundImage: AssetImage("images/bug2.png"),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Container(
            margin: EdgeInsets.only(right: 30.0, left: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 9.0),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black.withOpacity(0.7),
                ),
                Text(
                  "  Find your burger",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "MeriendaRegular"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.035,
          ),
          Text(
            "Some more taste",
            style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 24,
                fontWeight: FontWeight.w300,
                fontFamily: "MeriendaRegular"),
          ),
          SizedBox(
            height: h * 0.015,
          ),
          Container(
            height: h * 0.06,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: topics.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 4.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black.withOpacity(0.6), width: 0.4),
                          color: Colors.grey.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 12.0,
                              backgroundImage: AssetImage(topicsimage[index]),
                            ),
                            Text(
                              " " + topics[index],
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "MeriendaRegular"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
            ),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          Text(
            "Most popular",
            style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 24,
                fontWeight: FontWeight.w300,
                fontFamily: "MeriendaRegular"),
          ),
          SizedBox(
            height: h * 0.015,
          ),
          Container(
            height: h * 0.5,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SubMenuPage(
                          image: images[index],
                          rating: rating[index],
                          price: price[index],
                          timing: timing[index],
                          name: name[index],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    margin: EdgeInsets.only(
                        left: index == 0 ? 0 : 20, bottom: 15.0, top: 5.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    shadowColor: Colors.orangeAccent,
                    elevation: 4.0,
                    child: Column(
                      children: [
                        Hero(
                          tag: images[index],
                          child: Container(
                            width: 200,
                            height: h * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.fill),
                            ),
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                                size: 20.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.03,
                        ),
                        Text(
                          name[index],
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "MeriendaBold"),
                        ),
                        SizedBox(
                          height: h * 0.03,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.orangeAccent,
                              size: 20.0,
                            ),
                            Text(rating[index] + " ",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "MeriendaRegular")),
                            Icon(
                              Icons.history,
                              color: Colors.orangeAccent,
                              size: 18.0,
                            ),
                            Text(timing[index],
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "MeriendaRegular")),
                            SizedBox(
                              height: h * 0.05,
                            ),
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.dollarSign,
                                  color: Colors.orangeAccent,
                                  size: 18.0,
                                ),
                                Text(price[index] + " ",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "MeriendaBold")),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
