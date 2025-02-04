import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'confirmation_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          child: Column(
            children: [
              _header(context),
              SizedBox(
                height: 30.0,
              ),
              _inputfield(context),
            ],
          ),
        ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Raqamingizni kiriting",
          style: TextStyle(
              color: Colors.black87,
              fontSize: 22.0,
              fontWeight: FontWeight.bold),
        ),
        Text(
          textAlign: TextAlign.center,
          "Maxsus kodni yuborish uchun telefon raqamingizni to'g'ri kiriting",
          style: TextStyle(color: Colors.grey[500]),
        ),
      ],
    );
  }

  _inputfield(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Telefon raqamingiz",
          style: TextStyle(color: Colors.black54,fontSize: 16.0),
        ),
        SizedBox(height: 10.0,),
        IntlPhoneField(
          cursorColor: Colors.teal,
          keyboardType: TextInputType.phone,
          focusNode: FocusNode(),
          dropdownTextStyle: TextStyle(fontSize: 18.0,color: Colors.black54),
          dropdownIcon: Icon(Icons.arrow_drop_down_outlined,color: Colors.teal,size: 30.0,),
          style: TextStyle(color: Colors.black54,fontSize: 18.0),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            )
          ),
          initialCountryCode: "UZ",
        ),
        SizedBox(height: 20.0),
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(height: 55.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              elevation: 15.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>ConfirmationPage(),),);
            },
            child: Text("Davom etish",style: TextStyle(color: Colors.white,fontSize: 17.0),),
          ),
        ),
      ],
    );
  }
}
