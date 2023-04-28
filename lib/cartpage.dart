import 'package:flutter/material.dart';
import 'package:grocery_ui/StartShopppingPage.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        Padding(
          padding: const EdgeInsets.only(
            top: 130,
            left: 130,
          ),
          child: Image.asset(
            "assets/images/emptycart.png",
          ),
        ),
        Center(
          child: Text(
            "Your Cart is Empty",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        Center(
            child: Text(
                "Add items to the cart to view\n                   it here.")),
        SizedBox(
          height: 130,
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 55,
            width: 320,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff4F7B39),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return StartshoppePage();
                      },
                    ),
                  );
                },
                child: Text("Start Shopping")),
          ),
        )
      ],
    );
  }
}
