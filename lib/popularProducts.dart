import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  MyWidget(
      {this.image,
      this.text1,
      this.text2,
      this.text3,
      this.image2,
      this.text4,
      this.text5,
      this.text6,
      this.text7,
      super.key});

  String? image;
  String? image2;
  String? text1;
  String? text2;
  String? text3;
  String? text4;
  String? text5;
  String? text6;
  String? text7;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 240,
        width: 166,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 18,
                ),
                Center(
                  child: Image.asset(
                    image!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text1!),
                      Text(text2!),
                      Text(
                        text3!,
                        style: TextStyle(
                          color: Color(0xff4F7B39),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 180,
              left: 10,
              child: Row(
                children: [
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        text5!,
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
                        text6!,
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
                        text7!,
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
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7, top: 7),
                  child: Image.asset(image2!),
                ),
                Positioned(
                    top: 10,
                    left: 10,
                    child: Text(
                      text4!,
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ))
              ],
            ),
            Positioned(
              left: 110,
              bottom: 195,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    size: 30,
                    color: Color.fromARGB(255, 199, 197, 197),
                  )),
            ),
            Positioned(
                top: 171,
                left: 120,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      size: 30,
                      color: Color(0xff4F7B39),
                    )))
          ],
        ),
      ),
    );
  }
}
