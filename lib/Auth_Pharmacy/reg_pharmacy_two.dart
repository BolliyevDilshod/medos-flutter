import 'package:flutter/material.dart';

import '../Auth_Clinck/reg_map_page.dart';

class RegPharmacyTwo extends StatefulWidget {
  const RegPharmacyTwo({super.key});

  @override
  State<RegPharmacyTwo> createState() => _RegPharmacyTwoState();
}

class _RegPharmacyTwoState extends State<RegPharmacyTwo> {
  List <String>list = [
    "Andijon",
    "Farg'ona",
    "Namangan",
    "Toshkent",
    "Sirdaryo",
    "Jizzax",
    "Samarqand",
    "Qashqadaryo",
    "Surxondaryo",
    "Navoiy",
    "Buxoro",
    "Xorazm",
    "Qoraqolpog'iston",
  ];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
              child: Text(
                textAlign: TextAlign.center,
                "Dorixona qayerda joylashgan?",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                textAlign: TextAlign.center,
                "Foydalanuvchilar sizni topishlari oson bo'lishi uchun bu juda muhim",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text("Viloyatni tanlang",style: TextStyle(color: Colors.black54),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: SizedBox(),
                    icon: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.teal,
                    ),
                    style: TextStyle(color: Colors.black87),
                    dropdownColor: Colors.white,
                    hint: Text(
                      "Viloyat nomi",
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    value: selectedItem,
                    items: list.map((String list) {
                      return DropdownMenuItem<String>(
                        value: list,
                        child: Text(list),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedItem = newValue;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text("Manzil",style: TextStyle(color: Colors.black54),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                style: TextStyle(
                    color: Colors.black87
                ),
                cursorColor: Colors.teal,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: "Samarqand viloyati Narpay tumani",
                  suffixStyle: TextStyle(
                      color: Colors.black54, backgroundColor: Colors.black87),
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text("Xaritadan belgilang",style: TextStyle(color: Colors.black54),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 280.0,
                width: 320.0,
                child: RegMapPage(),
                // child: GoogleMap(
                //   initialCameraPosition: _langLat,
                //   onMapCreated: (GoogleMapController controller){
                //     _controller.complete(controller);
                //   }
                // ),
              ),
            ),
            SizedBox(height: 10.0,),
            Divider(
              thickness: 5,
              color: Colors.grey[200],
            ),
            SizedBox(height: 10.0,),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 50.0,width: 360.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      elevation: 15.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                  ),
                  onPressed: () {
                  },
                  child: Text("Saqlash va yakunlash",style: TextStyle(color: Colors.white,fontSize: 17.0),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

