import 'package:flutter/material.dart';

class InfoClinic extends StatefulWidget {
  const InfoClinic({super.key});

  @override
  State<InfoClinic> createState() => _InfoClinicState();
}

class _InfoClinicState extends State<InfoClinic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Container(
            color: Colors.white,
            child:  Column(
                children: [
                  ClipRRect(
                      child: Image.asset(
                    "images/akfamedline.jpg",
                    fit: BoxFit.contain,
                    width: 380.0,
                  ),),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
