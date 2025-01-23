import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({super.key});

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
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
              SizedBox(height: 50.0,),
              Pinput(
                length: 5,
                defaultPinTheme: defaultpinput,
                focusedPinTheme: defaultpinput.copyWith(
                  decoration: defaultpinput.decoration?.copyWith(
                    border: Border.all(color: Colors.teal)
                  ),
                ),
              ),
              SizedBox(height: 100.0,),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 55.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      elevation: 15.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(
                      "Kodni qayta yuborish ",
                      style: TextStyle(color: Colors.grey, fontSize: 17.0),
                    ),
                    Text(
                      "00:23 ",
                      style: TextStyle(color: Colors.grey, fontSize: 17.0),
                    ),
                  ]),
                ),
              ),
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
          "Telefon raqamingizga maxsus kod sms tarzda yuboriladi",
          style: TextStyle(color: Colors.grey[500]),
        ),
      ],
    );
  }
}
final defaultpinput = PinTheme(
  width: 50,
  height: 50,
  textStyle: const TextStyle(
    fontSize: 22.0,
    color: Colors.black87,
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(color: Colors.grey),
    color: Colors.grey[200],
  ),
);
