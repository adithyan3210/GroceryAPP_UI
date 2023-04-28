import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TrackorderSettings extends StatefulWidget {
  const TrackorderSettings({super.key});

  @override
  State<TrackorderSettings> createState() => _TrackorderSettingsState();
}

class _TrackorderSettingsState extends State<TrackorderSettings> {
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
                  "Track Order",
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
                  "Order 110523",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 165),
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
                child: Text("wed, 15 June 2022"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
