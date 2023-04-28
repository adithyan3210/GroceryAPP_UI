import 'package:flutter/material.dart';
import 'package:grocery_ui/SignUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            color: Colors.white,
          ),
          Positioned(
            top: 150,
            child: Image.asset(
              "assets/images/Pure_organic.png",
              width: 400,
              height: 400,
            ),
          ),
          Positioned(
              top: 145,
              left: 108,
              child: Image.asset("assets/images/Logo.png")),
          Positioned(
            left: 170,
            top: 650,
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                  setState(() {});
                },
                icon: Icon(
                  Icons.arrow_forward,
                  size: 40.0,
                )),
          )
        ],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.contacts),
                    hintText: ("Username"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off),
                    hintText: ("Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13))),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            SizedBox(
              width: 360,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff4F7B39),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const SignupPage1();
                    },
                  ));
                },
                child: Text("LOGiN"),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have An Account?"),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return SignupPage();
                        },
                      ));
                    },
                    child: Text("Sign Up"))
              ],
            ),
            Text(
              "Or",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.email_outlined,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 10,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        )),
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
                      suffixIcon: Icon(Icons.visibility_off),
                      hintText: "Password",
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
                      hintText: " Confirm Password",
                      suffixIcon: Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            SizedBox(
              height: 55,
              width: 360,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff4F7B39),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return SignupOTP();
                        },
                      ),
                    );
                  },
                  child: Text("NEXT")),
            ),
          ],
        ),
      ),
    );
  }
}
