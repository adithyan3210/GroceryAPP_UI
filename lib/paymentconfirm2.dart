import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentCnfrm2 extends StatefulWidget {
  const PaymentCnfrm2({super.key});

  @override
  State<PaymentCnfrm2> createState() => _PaymentCnfrm2State();
}

class _PaymentCnfrm2State extends State<PaymentCnfrm2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/tickround.png"),
              Image.asset("assets/images/tick.png")
            ],
          ),
          Text(
            "Thank You",
            style: TextStyle(fontSize: 20),
          ),
          Text("Your Order is confirmed")
        ],
      ),
    ));
  }
}
