import 'package:flutter/material.dart';

class InfoProject extends StatelessWidget {
  const InfoProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Dastur haqida",
          style: TextStyle(
              color: Colors.black87,
              fontSize: 18.0,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Image.asset(
                "images/medos_logo.png",
                width: 160.0,
                height: 60.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Versiya 1.7.0",
                  style: TextStyle(color: Colors.grey[500]),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text("11.01.2025", style: TextStyle(color: Colors.grey[500])),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Divider(
              thickness: 4,
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Image.asset(
                    "images/icons/app-store.png",
                    height: 20.0,
                    width: 20.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {},
                    child: Text(
                      "AppStoreda baholash",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    width: 55.0,
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.grey[500],
                    size: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Image.asset(
                    "images/icons/android.png",
                    height: 20.0,
                    width: 20.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Google Playda  baholash",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    width: 27.0,
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.grey[500],
                    size: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Image.asset(
                    "images/icons/telegram.png",
                    height: 20.0,
                    width: 20.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Kanalimizga a'zo bo'ling",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    width: 34.0,
                  ),

                  Icon(
                    Icons.navigate_next,
                    color: Colors.grey[500],
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
