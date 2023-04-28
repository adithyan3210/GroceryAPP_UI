import 'package:flutter/material.dart';
import 'paymentconfirm2.dart';

class PaymentCnfrm1 extends StatefulWidget {
  const PaymentCnfrm1({super.key});

  @override
  State<PaymentCnfrm1> createState() => _PaymentCnfrm1State();
}

class _PaymentCnfrm1State extends State<PaymentCnfrm1> {
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
                "Payment",
                style: TextStyle(fontSize: 25, color: Color(0xff4F7B39)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                "Cash on Delivery",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2,
          height: 50,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Subtotal"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Text(
                "₹30.00",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Delivery"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 253),
              child: Text(
                "free",
                style: TextStyle(color: Color(0xff4F7B39)),
              ),
            )
          ],
        ),
        SizedBox(
          height: 9,
        ),
        Divider(
          thickness: 2,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Grand  Total",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: Text(
                "₹30.00",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 254),
          child: Text(
            "Inclusive of All Taxes",
            style: TextStyle(fontSize: 10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 435, left: 10),
          child: SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                    backgroundColor: Color(0xff4F7B39)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return PaymentCnfrm2();
                    },
                  ));
                },
                child: Text(
                  "NEXT",
                  style: TextStyle(fontSize: 25),
                )),
          ),
        )
      ],
    ));
  }
}
