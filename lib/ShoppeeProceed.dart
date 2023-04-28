import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_ui/cartproductcontinue.dart';

class ProceedNext extends StatefulWidget {
  const ProceedNext({super.key});

  @override
  State<ProceedNext> createState() => _ProceedNextState();
}

class _ProceedNextState extends State<ProceedNext> {
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
                  "Select Slot",
                  style: TextStyle(fontSize: 25, color: Color(0xff4F7B39)),
                ),
              )
            ],
          ),
          Divider(
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "sun",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 110, 110, 110)),
              ),
              Text(
                "mon",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 110, 110, 110)),
              ),
              Text(
                "tue",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 110, 110, 110)),
              ),
              Text(
                "wed",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 110, 110, 110)),
              ),
              Text(
                "thu",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 110, 110, 110)),
              ),
              Text(
                "fri",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 110, 110, 110)),
              ),
              Text(
                "sat",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 110, 110, 110)),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "10",
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Text(
                  "11",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Text(
                "12",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "13",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "14",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "15",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "16",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Divider(
            thickness: 2,
          ),
          Text(
            "Today, Wednesday June 13",
            style: TextStyle(fontSize: 15),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 530),
            child: SizedBox(
              height: 55,
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff4F7B39),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return CartProduct();
                    },
                  ));
                },
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
