import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationPage1 extends StatefulWidget {
  const NotificationPage1({super.key});

  @override
  State<NotificationPage1> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage1> {
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
                  "Notification",
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
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Image.asset("assets/images/Nonotification.png"),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                "NO Notifications",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  "    It seems like you haven’t \n received any notifications yet")
            ],
          )
        ],
      ),
    );
  }
}
