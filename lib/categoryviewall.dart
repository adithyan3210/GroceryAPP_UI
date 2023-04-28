import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Category extends StatelessWidget {
  Category({this.text1, this.text2, super.key});

  String? text1;
  String? text2;

  @override
  Widget build(BuildContext context) {
    List data = [
      {"image": "assets/images/veg2.png", "name": "Vegetables"},
      {"image": "assets/images/fruits2.png", "name": "Fruits"},
      {"image": "assets/images/dryfruits2.png", "name": "Dry Fruits"},
      {"image": "assets/images/meat2.png", "name": "Meat"},
      {"image": "assets/images/teapowder.png", "name": "Tea/ Coffee"},
      {"image": "assets/images/oil.png", "name": "Oil & Ghee"},
      {"image": "assets/images/milky.png", "name": "Diary Products"},
      {"image": "assets/images/spices.png", "name": "Spices"},
      {"image": "assets/images/rice.png", "name": "Rice"},
      {"image": "assets/images/bevarage.png", "name": "Beverages"},
      {"image": "assets/images/biscuits.png", "name": "Biscuits"},
      {"image": "assets/images/cosmetics.png", "name": "Deodorants"},
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new)),
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    text2!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        color: Color((0xff4F7B39))),
                  ),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.1,
                    crossAxisCount: 3,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 10),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffE4EFDE),
                          borderRadius: BorderRadius.circular(15)),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Image.asset(data[index]['image']),
                            Text(data[index]['name']),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
