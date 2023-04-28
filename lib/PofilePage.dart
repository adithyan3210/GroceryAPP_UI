import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_ui/adress.dart';
import 'package:grocery_ui/myorder.dart';
import 'package:grocery_ui/ProfileSettings.dart';
import 'package:grocery_ui/TrackOrder.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 250),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 290, top: 50),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return ProfileSettingss();
                          },
                        ));
                      },
                      icon: Icon(Icons.settings)),
                ),
                Image.asset("assets/images/Ellipse.png"),
                SizedBox(height: 10),
                Text(
                  "Will Johnson",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Text("+91 7306743584")
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return MyorderSettings();
                    },
                  ));
                },
                icon: Icon(
                  Icons.refresh,
                  color: Color(0xff4F7B39),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return MyorderSettings();
                      },
                    ));
                  },
                  child: Text(
                    "My Orders",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return MyorderSettings();
                        },
                      ));
                    },
                    icon: Icon(Icons.arrow_forward_ios_rounded)),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return TrackorderSettings();
                    },
                  ));
                },
                icon: Icon(
                  Icons.local_shipping_sharp,
                  color: Color(0xff4F7B39),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return TrackorderSettings();
                      },
                    ));
                  },
                  child: Text(
                    "Track Order ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 166),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return TrackorderSettings();
                        },
                      ));
                    },
                    icon: Icon(Icons.arrow_forward_ios_rounded)),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return ProfileAdress();
                    },
                  ));
                },
                icon: Icon(
                  Icons.location_on_outlined,
                  color: Color(0xff4F7B39),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return ProfileAdress();
                      },
                    ));
                  },
                  child: Text(
                    "Address",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ProfileAdress();
                        },
                      ));
                    },
                    icon: Icon(Icons.arrow_forward_ios_rounded)),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.phone_in_talk_outlined,
                  color: Color(0xff4F7B39),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    " Contact Us",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 171),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded)),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Color(0xff4F7B39),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded)),
              )
            ],
          ),
          SizedBox(height: 50),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.exit_to_app_outlined,
                    color: Color(0xff4F7B39),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Logout ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
