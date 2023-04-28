import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyorderSettings extends StatefulWidget {
  const MyorderSettings({super.key});

  @override
  State<MyorderSettings> createState() => _MyorderSettingsState();
}

class _MyorderSettingsState extends State<MyorderSettings> {
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
                  "My order",
                  style: TextStyle(fontSize: 25, color: Color(0xff4F7B39)),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 2,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "wed, 15 June 2022",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 111),
                child: Text(
                  "₹ 30.00",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Order 110523"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 195),
                child: Text("Details"),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ))
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Sat, 11 June 2022",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Text(
                  "₹ 200.00",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Order 110523"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 195),
                child: Text("Details"),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ))
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Mon, 06 June 2022",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: Text(
                  "₹ 520.50",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Order 110523"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 195),
                child: Text("Details"),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
