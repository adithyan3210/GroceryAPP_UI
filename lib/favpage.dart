import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "Whishlist",
                style: TextStyle(fontSize: 25, color: Color(0xff4F7B39)),
              ),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Image.asset("assets/images/emptycart.png"),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Your Wishlist is Empty",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  "It seems like you haven’t added any\n            items to your wishlist")
            ],
          )
        ],
      ),
    );
  }
}
