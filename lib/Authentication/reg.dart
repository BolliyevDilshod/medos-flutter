import 'package:flutter/material.dart';
import 'package:medos/Auth_Clinck/reg_clinic.dart';
import 'package:medos/Auth_Doctors/reg_doctor.dart';

class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                textAlign: TextAlign.center,
                "Siz ro'yxatdan qanday maqsadda o'tmoqchisiz?",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                textAlign: TextAlign.center,
                "Ro'yxatdan o'tishni boshlashdan oldin iltimos pastdagi bo'limlardan birini tanlang",
                style: TextStyle(color: Colors.black38),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: 60.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Reg_Clinic(),
                    ),
                  );
                },
                label: Text(
                  "Shifoxona akkountini ochish",
                  style: TextStyle(color: Colors.black87, fontSize: 18.0),
                ),
                icon: Icon(Icons.local_hospital_outlined),
                style: ElevatedButton.styleFrom(
                    iconColor: Colors.teal,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.teal, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: 60.0),
              child: ElevatedButton.icon(
                onPressed: () {
                },
                label: Text(
                  "Dorixona akkountini ochish",
                  style: TextStyle(color: Colors.black87, fontSize: 19.0),
                ),
                icon: Icon(Icons.home_mini_rounded),
                style: ElevatedButton.styleFrom(
                    iconColor: Colors.teal,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.teal, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: 60.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegDoctor(),),);
                },
                label: Text(
                  "Shifokor akkountini ochish",
                  style: TextStyle(color: Colors.black87, fontSize: 19.0),
                ),
                icon: Icon(Icons.person_outline_rounded),
                style: ElevatedButton.styleFrom(
                    iconColor: Colors.teal,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.teal, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
