import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medos/screens_pages/save_page.dart';
import 'package:medos/two_pages/info_project.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: CircleAvatar(
                  maxRadius: 50.0,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 45.0,
                    backgroundImage: AssetImage("images/tiger.jpg"),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Bolliyev Dilshod",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Stomatolog",
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.medication_liquid_sharp,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 11.0,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 16.0)),
                  onPressed: () {},
                  child: Text(
                    "Shifokor ma'lumotlari",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.heart_broken_outlined,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 11.0,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SavePage(),
                      ),
                    );
                  },
                  child: Text(
                    "Saqlanganlar",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.language,
                  color: Colors.black87,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Til",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 100.0,
                ),
                Text(
                  "O'zbekcha",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 12.0,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => InfoProject(),),);
                  },
                  child: Text("Dastur haqida",style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.w500),
                ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.exit_to_app,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 12.0,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: () {},
                  child: Text("Akkountdan chiqish",style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 240.0,
            ),
            Text(
              "Versiya 0.1.1 beta",
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
