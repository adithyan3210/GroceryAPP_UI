import 'package:flutter/material.dart';
import 'package:grocery_ui/mainpage.dart';

class SignupPage1 extends StatefulWidget {
  const SignupPage1({super.key});

  @override
  State<SignupPage1> createState() => _SignupPage1State();
}

class _SignupPage1State extends State<SignupPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    "assets/images/Pure_organic.png",
                    height: 400,
                    width: 400,
                  ),
                ),
                Positioned(
                  left: 70,
                  child: Image.asset(
                    "assets/images/Logo.png",
                    height: 250,
                    width: 250,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: " Email ID",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: " Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ),
            SizedBox(height: 150),
            SizedBox(
                height: 55,
                width: 360,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13)),
                        backgroundColor: Color(0xff4F7B39)),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return SignupPage2();
                          },
                        ),
                      );
                    },
                    child: Text("NEXT")))
          ],
        ),
      ),
    );
  }
}

class SignupPage2 extends StatefulWidget {
  const SignupPage2({super.key});

  @override
  State<SignupPage2> createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    "assets/images/Pure_organic.png",
                    height: 400,
                    width: 400,
                  ),
                ),
                Positioned(
                  left: 70,
                  child: Image.asset(
                    "assets/images/Logo.png",
                    height: 250,
                    width: 250,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Address Line 1",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Address Line 2",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  hintText: "CITY",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                bottom: 10,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        hintText: "STATE",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  SizedBox(
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "PINCODE",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11),
            SizedBox(
              height: 55,
              width: 360,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff4F7B39),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SignupOTP();
                      },
                    ),
                  );
                },
                child: Text("NEXT"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupOTP extends StatefulWidget {
  const SignupOTP({super.key});

  @override
  State<SignupOTP> createState() => _SignupOTPState();
}

class _SignupOTPState extends State<SignupOTP> {
  bool isChange = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: Image.asset(
                  "assets/images/Pure_organic.png",
                  height: 400,
                  width: 400,
                )),
                Positioned(
                  top: 0,
                  left: 70,
                  child: Image.asset(
                    "assets/images/Logo.png",
                    height: 250,
                    width: 250,
                  ),
                ),
              ],
            ),
            Text(
              "Verification",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              "Enter OTP code sent to your number",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  height: 52,
                  width: 52,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  height: 52,
                  width: 52,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  height: 52,
                  width: 52,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  height: 52,
                  width: 52,
                ),
              ],
            ),
            SizedBox(height: 150),
            SizedBox(
              height: 55,
              width: 360,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff4F7B39),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return LocationPage();
                      },
                    ),
                  );
                },
                child: Text("SUBMIT"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: Image.asset(
                  "assets/images/Pure_organic.png",
                  height: 400,
                  width: 400,
                )),
                Positioned(
                  top: 0,
                  left: 70,
                  child: Image.asset(
                    "assets/images/Logo.png",
                    height: 250,
                    width: 250,
                  ),
                ),
              ],
            ),
            Text(
              "Enable location",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "We will need your location to give you \n better experience",
              style: TextStyle(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 150),
            SizedBox(
              height: 55,
              width: 360,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff4F7B39),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return BottomBar();
                      },
                    ),
                  );
                },
                child: Text("ENABLE LOCATION"),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return BottomBar();
                      },
                    ),
                  );
                },
                child: Text("NOT NOW"))
          ],
        ),
      ),
    );
  }
}
