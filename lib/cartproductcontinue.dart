import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartProduct extends StatefulWidget {
  const CartProduct({super.key});

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 40,
                      color: Color(0xff4F7B39),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 85),
                child: Text(
                  "Vegetable",
                  style: TextStyle(fontSize: 25, color: Color(0xff4F7B39)),
                ),
              )
            ],
          ),
          Divider(
            thickness: 2,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 102),
                child: Text("Fresh Organic Tomato 500g"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    )),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 285,
                ),
                child: Image.asset(
                  "assets/images/tomatocart1.png",
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 103),
                child: Text("₹30.00"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120),
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
                              fontSize: 15),
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "0",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      color: Color(0xff9B9A9A),
                      height: 30,
                      width: 30,
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "+",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
