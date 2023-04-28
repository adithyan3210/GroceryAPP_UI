import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BestspAll extends StatelessWidget {
  BestspAll({this.text1, this.text2, this.text3, this.image1, super.key});
  String? text1;
  String? text2;
  String? text3;
  String? image1;
  List bsdata = [
    {
      "image": "assets/images/tomatobs.png",
      "name": "Fresh Organic Tomato\n500g"
    },
    {
      "image": "assets/images/orangebs.png",
      "name": "Fresh Organic Tomato\n500g"
    },
    {
      "image": "assets/images/carrotbs.png",
      "name": "Fresh Organic carrot\n500g"
    },
    {
      "image": "assets/images/applebs.png",
      "name": "Fresh Organic apples\n500g"
    },
    {"image": "assets/images/meatbs.png", "name": "Fresh Organic meats\n500g"},
    {
      "image": "assets/images/watermelonbs1.png",
      "name": "Fresh Watermelon\n500g"
    },
    {"image": "assets/images/honeybs.png", "name": "Fresh Organic Honey\n500g"},
    {
      "image": "assets/images/teabs3.png",
      "name": "Tea Powder\n500g",
    },
    {
      "image": "assets/images/fishbs.png",
      "name": "Fresh Organic Fish\n500g",
    },
    {"image": "assets/images/redbullbs.png", "name": "RedBull\n500g"},
    {
      "image": "assets/images/cashwebsssssss.png",
      "name": "Fresh Organic Cashews\n500g"
    },
    {"image": "assets/images/cosmticsbs.png", "name": "cosmetics\n500g"},
    {
      "image": "assets/images/greenapplebs.png",
      "name": "Fresh GreenApple\n500g"
    },
    {
      "image": "assets/images/Cabbagebs.png",
      "name": "Fresh Organic cabbage\n500g"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new)),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            hintText: (text1!),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      text2!,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 27,
                          color: Color((0xff4F7B39))),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 220,
                      mainAxisSpacing: 10),
                  itemCount: bsdata.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 206, 206))),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 2, top: 8),
                                      child: Image.asset(image1!),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 9),
                                      child: Text(
                                        "-25%",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 95, top: 4),
                                  child: Icon(
                                    Icons.favorite,
                                    size: 30,
                                    color: Color(0xff4F7B39),
                                  ),
                                )
                              ],
                            ),
                            Image.asset(bsdata[index]['image']),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(bsdata[index]['name']),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
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
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.shopping_bag_outlined,
                                      size: 30,
                                      color: Color(0xff4F7B39),
                                    ))
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
        ),
      ),
    );
  }
}
