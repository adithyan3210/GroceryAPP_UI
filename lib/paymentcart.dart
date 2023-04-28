import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_ui/paymentconfirm1.dart';

class PaymentCart extends StatefulWidget {
  const PaymentCart({super.key});

  @override
  State<PaymentCart> createState() => _PaymentCartState();
}

class _PaymentCartState extends State<PaymentCart> {
  String? paymentmethod;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
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
      Divider(
        thickness: 2,
      ),
      Column(
        children: [
          ListTile(
            title: Text("Cash on Delivery"),
            leading: Radio(
              value: 'cod',
              groupValue: paymentmethod,
              onChanged: (value) {
                setState(() {
                  paymentmethod = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Debit / Credit Card"),
            leading: Radio(
              value: 'debitorcredit',
              groupValue: paymentmethod,
              onChanged: (value) {
                setState(() {
                  paymentmethod = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Net Banking"),
            leading: Radio(
              value: 'netbanking',
              groupValue: paymentmethod,
              onChanged: (value) {
                setState(() {
                  paymentmethod = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text("UPI"),
            leading: Radio(
              value: 'upi ',
              groupValue: paymentmethod,
              onChanged: (value) {
                setState(() {
                  paymentmethod = value;
                });
              },
            ),
          ),
        ],
      ),
      SizedBox(
        height: 375,
      ),
      Divider(
        thickness: 2,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 20),
            child: Column(
              children: [
                Text(
                  "₹30.00",
                  style: TextStyle(fontSize: 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: Text(
                    "Total Amount",
                    style: TextStyle(fontSize: 10),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 130),
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
                        return const PaymentCnfrm1();
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
      )
    ]));
  }
}
