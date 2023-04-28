import 'package:flutter/material.dart';

class ProfileAdress extends StatefulWidget {
  const ProfileAdress({super.key});

  @override
  State<ProfileAdress> createState() => _ProfileAdressState();
}

class _ProfileAdressState extends State<ProfileAdress> {
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
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 40,
                        color: Color(0xff4F7B39),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 85),
                  child: Text(
                    "Address",
                    style: TextStyle(fontSize: 25, color: Color(0xff4F7B39)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 205),
                  child: Text(
                    "Current Location",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 152),
                  child: Text("Delivering to: Kakkanad, 682030"),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 265),
              child: Text("Address",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Address Line 1",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xff4F7B39),
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Address Line 2",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xff4F7B39),
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "City",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
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
                ),
                SizedBox(
                  width: 19,
                ),
                SizedBox(
                  width: 170,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "PINCODE",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
