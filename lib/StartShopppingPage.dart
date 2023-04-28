import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_ui/ShoppeeProceed.dart';
import 'package:grocery_ui/paymentcart.dart';

class StartshoppePage extends StatefulWidget {
  const StartshoppePage({super.key});

  @override
  State<StartshoppePage> createState() => _StartshoppePageState();
}

class _StartshoppePageState extends State<StartshoppePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Text(
              "Cart",
              style: TextStyle(
                  color: Color(0xff4F7B39),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Delivering to: Kakkanad, 682030",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 95),
                child: TextButton(
                    onPressed: () {},
                    child: Text("Change",
                        style: TextStyle(
                          color: Color(0xff4F7B39),
                        ))),
              )
            ],
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Vegetable",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "( 1 item )",
                  style: TextStyle(fontSize: 20, color: Color(0xff9B9A9A)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 125),
                child: Text(
                  "₹30.00",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("15 jan 16:00-20:00"),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "CHANGE",
                  style: TextStyle(color: Color(0xff4F7B39)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff9B9A9A))),
                    child: Image.asset("assets/images/tomatocart.png")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const ProceedNext();
                        },
                      ));
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded)),
              )
            ],
          ),
          Divider(
            height: 50,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Subtotal",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Text(
                  "₹30.00",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Delivery",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 269),
                child: Text(
                  "free",
                  style: TextStyle(color: Color(0xff4F7B39)),
                ),
              ),
            ],
          ),
          Divider(height: 40),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Grand  Total",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 227),
                child: Text(
                  "",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Inclusive of All Taxes",
              style: TextStyle(fontSize: 9),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 270, left: 20),
                child: Text(
                  "₹30.00",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 260, left: 130),
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13)),
                          backgroundColor: const Color(0xff4F7B39)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const PaymentCart();
                          },
                        ));
                      },
                      child: Text(
                        "Proceed",
                        style: TextStyle(fontSize: 25),
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
