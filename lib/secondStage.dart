import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:grocery_ui/bestsellingprdctsall.dart';
import 'package:grocery_ui/categoryviewall.dart';
import 'package:grocery_ui/notification.dart';
import 'package:grocery_ui/popularProducts.dart';
import 'package:grocery_ui/popularProductsALL.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/Logowithname.png",
                    height: 91,
                    width: 210,
                  ),
                  SizedBox(width: 120),
                  SizedBox(
                    height: 30,
                    child: IconButton(
                      iconSize: 32,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return NotificationPage1();
                          },
                        ));
                      },
                      icon: Icon(Icons.notifications_none_sharp),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    hintText: "Search your needs here...",
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [Image.asset("assets/images/firstbanner.png")],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color((0xff4F7B39))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 210),
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return Category(
                                text1: "Search your needs here...",
                                text2: "Category",
                              );
                            },
                          ));
                        },
                        child: Text(
                          "View all",
                          style: TextStyle(color: Color(0xff4F7B39)),
                        )),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 147, 186, 127),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/veg.png",
                          height: 60,
                          width: 84,
                        ),
                        Text("vegetables"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 147, 186, 127),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/fruits.png",
                        height: 60,
                        width: 84,
                      ),
                      Text("Fruits"),
                    ],
                  ),
                ),
                SizedBox(width: 9),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 147, 186, 127),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/dryfruits.png",
                        height: 60,
                        width: 84,
                      ),
                      Text("Dry Fruits"),
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 147, 186, 127),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/meat.png",
                          height: 60,
                          width: 84,
                        ),
                        Text("Meats"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Offers",
                    style: TextStyle(
                        color: Color(0xff4F7B39),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 350,
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      height: 250,
                      width: 350,
                      child: Image.asset(
                        "assets/images/watermelon.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    width: 350,
                    child: Image.asset(
                      "assets/images/watermelon.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Best Selling Products",
                        style: TextStyle(
                            color: Color(0xff4F7B39),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 91),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return BestspAll(
                                  text1: "Search your needs here...",
                                  text2: "Best Selling Products",
                                  image1: "assets/images/Vectorbss.png",
                                  text3: "-25%",
                                );
                              },
                            ));
                          },
                          child: Text(
                            "View all",
                            style: TextStyle(color: Color(0xff4F7B39)),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Color.fromARGB(255, 206, 206, 206))),
                    child: Column(
                      children: [
                        Image.asset("assets/images/tomato.png"),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Fresh Organic Tomato\n500g"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 15),
                            Text(
                              "₹30",
                              style: TextStyle(color: Color(0xff4F7B39)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            top: 5,
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                color: Colors.white,
                                height: 35,
                                width: 35,
                              ),
                              Container(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                color: Color.fromARGB(244, 232, 231, 231),
                                height: 35,
                                width: 35,
                              ),
                              Container(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                color: Colors.white,
                                height: 35,
                                width: 35,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    height: 220,
                    width: 166,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Color.fromARGB(255, 206, 206, 206))),
                    child: Column(
                      children: [
                        Image.asset("assets/images/orange.png"),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Fresh Organic Oragne\n500g"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 15),
                            Text(
                              "₹50",
                              style: TextStyle(color: Color(0xff4F7B39)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            top: 5,
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                color: Colors.white,
                                height: 35,
                                width: 35,
                              ),
                              Container(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                color: Color.fromARGB(244, 232, 231, 231),
                                height: 35,
                                width: 35,
                              ),
                              Container(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                color: Colors.white,
                                height: 35,
                                width: 35,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    height: 220,
                    width: 166,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [Image.asset("assets/images/secondbanner.png")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    "Popular Products",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color((0xff4F7B39))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 116),
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return PopAll(
                                text1: "Search your needs here...",
                                text2: "Best Selling Products",
                                image1: "assets/images/Vectorbss.png",
                                text3: "-25%",
                              );
                            },
                          ));
                        },
                        child: Text(
                          "View all",
                          style: TextStyle(color: Color(0xff4F7B39)),
                        )),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                MyWidget(
                  image: "assets/images/cashew.png",
                  text1: "Fresh Cashew",
                  text2: "500g",
                  text3: "₹400",
                  image2: "assets/images/Vector1.png",
                  text4: "-25%",
                  text5: "-",
                  text6: "1",
                  text7: "+",
                ),
                MyWidget(
                  image: "assets/images/teapowder.png",
                  text1: "Ripple Tea",
                  text2: "500g",
                  text3: "₹120",
                  image2: "assets/images/Vector1.png",
                  text4: "-25%",
                  text5: "-",
                  text6: "1",
                  text7: "+",
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                MyWidget(
                  image: "assets/images/watermelonprdct.png",
                  text1: "Fresh Watermelon",
                  text2: "500g",
                  text3: "₹20",
                  image2: "assets/images/Vector1.png",
                  text4: "-25%",
                  text5: "-",
                  text6: "1",
                  text7: "+",
                ),
                MyWidget(
                  image: "assets/images/FISH.png",
                  text1: "fresh fish",
                  text2: "500g",
                  text3: "₹100",
                  image2: "assets/images/Vector1.png",
                  text4: "-25%",
                  text5: "-",
                  text6: "1",
                  text7: "+",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
