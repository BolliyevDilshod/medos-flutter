import 'dart:io';

import 'package:flutter/material.dart';
import 'package:medos/Auth_Doctors/reg_doctor_two.dart';

class RegDoctor extends StatefulWidget {
  const RegDoctor({super.key});

  @override
  State<RegDoctor> createState() => _RegDoctorState();
}

class _RegDoctorState extends State<RegDoctor> {
  TextEditingController _editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "O'zingiz haqingizda ma'lumotlarni kiriting",
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
                  "Shaxsiy akkountingizni ro'yxatdan o'tkazish uchun bu juda muhim ",
                  style: TextStyle(color: Colors.black38, fontSize: 16.0),
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/akfamedline.jpg"),
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  onPressed: () {},
                  child: Text(
                    "Rasm qo'shish",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  textAlign: TextAlign.left,
                  "To'liq ismingizni kiriting",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.black87
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: "Ismingiz",
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                    suffixStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.black87
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: "Familyangiz",
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                    suffixStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.black87
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: "Otangizning ismi",
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                    suffixStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  textAlign: TextAlign.left,
                  "Jinsingiz",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: 340,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Erkak",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          )),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Ayol",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  textAlign: TextAlign.left,
                  "To'g'ilgan sanangiz",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black87
                  ),
                  keyboardType: TextInputType.number,
                  controller: _editingController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: "09.07.1988",
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                    prefixIcon: Icon(Icons.calendar_month_outlined,color: Colors.teal,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                  ),
                  readOnly: true,
                  onTap: () {
                    _dateTime();
                  },

                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Divider(
                thickness: 3,
                color: Colors.grey[200],
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0))),
                      child: Text(
                        "Ortga qaytish",
                        style: TextStyle(color: Colors.black87, fontSize: 16.0),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>RegDoctorTwo() ),);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0))),
                      child: Text(
                        "Davom eting",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _dateTime() async {
    DateTime? _picker = await showDatePicker(
      initialDate: DateTime.now(),
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),);

    if(_picker!=null){
      setState(() {
        _editingController.text = _picker.toString().split(" ")[0];
      });
    }
  }
}
