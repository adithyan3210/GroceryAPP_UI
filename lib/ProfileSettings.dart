import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileSettingss extends StatefulWidget {
  const ProfileSettingss({super.key});

  @override
  State<ProfileSettingss> createState() => _ProfileSettingssState();
}

class _ProfileSettingssState extends State<ProfileSettingss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    "Profile Settings",
                    style: TextStyle(fontSize: 25, color: Color(0xff4F7B39)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: TextField(
                decoration: InputDecoration(
                    label: Text(
                      "First Name",
                      style: TextStyle(color: Color(0xff4F7B39)),
                    ),
                    hintText: "Enter Firstname",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    label: Text(
                      "Second Name",
                      style: TextStyle(color: Color(0xff4F7B39)),
                    ),
                    hintText: ("Enter Secondname"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email Id",
                    hintStyle: TextStyle(color: Color(0xff4F7B39)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Phone Number",
                    hintStyle: TextStyle(color: Color(0xff4F7B39)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(color: Color(0xff4F7B39)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Color(0xff4F7B39)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
