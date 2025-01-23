import 'package:flutter/material.dart';
import 'package:medos/Authentication/login.dart';
import 'package:medos/screens_pages/save_page.dart';

import '../Authentication/reg.dart';
import '../two_pages/info_project.dart';

class Menu_Reg extends StatelessWidget {
  const Menu_Reg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "images/medos_logo.png",
            width: 160.0,
            height: 180.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Reg(),),);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              shadowColor: Colors.grey,
              elevation: 5,
              padding: EdgeInsets.symmetric(horizontal: 75, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Text(
              "Ro'yxatdan o'tish" ,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),),);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[300],
              shadowColor: Colors.grey,
              elevation: 5,
              padding: EdgeInsets.symmetric(horizontal: 83.0, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Text(
              'Profilga kirish',
              style: TextStyle(color: Colors.teal, fontSize: 16.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            child: Text(
              textAlign: TextAlign.center,
              "Shifokor shifoxona yoki dorixona qo'shish uchun ro'yxatdan o'ting yoki akkountingizga kiring",
              style: TextStyle(color: Colors.grey[500], fontSize: 16.0),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.heart_broken_outlined,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 10.0,
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 10.0,
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
          ),
          SizedBox(
            height: 160.0,
          ),
          Text(
            "Versiya 0.1.1 beta",
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
