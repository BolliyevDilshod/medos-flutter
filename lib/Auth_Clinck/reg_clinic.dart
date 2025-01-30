import 'package:flutter/material.dart';
import 'package:medos/Authentication/reg.dart';
import 'package:medos/Auth_Clinck//reg_clinic_two_page.dart';
import 'package:multiselect/multiselect.dart';

class Reg_Clinic extends StatefulWidget {
  const Reg_Clinic({super.key});

  @override
  State<Reg_Clinic> createState() => _Reg_ClinicState();
}

class _Reg_ClinicState extends State<Reg_Clinic> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 9, minute: 00);

  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  TimeOfDay _timeDay = TimeOfDay(hour: 18, minute: 00);

  void _showTime() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeDay = value!;
      });
    });
  }

  bool isSwiched = false;
  List<String> days = [
    "Dushanba",
    "Seshanba",
    "Chorshanba",
    "Payshanba",
    "Juma",
    "Shanba",
    "Yakshanba"
  ];
  String? selectItem;

  final List<String> list = ["Xususiy", "Davlat"];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                textAlign: TextAlign.center,
                "Shifoxona haqidagi ma'lumotlarni kiriting",
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
                "Shifoxona akkountingizni ochish va ro'yxatdan o'tkazish uchun bu juda muhim ",
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
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                textAlign: TextAlign.left,
                "Shifoxonaning to'liq nomi",
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
                cursorColor: Colors.teal,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: "SintezLab",
                  hintStyle: TextStyle(
                    color: Colors.black26,
                  ),
                  suffixStyle: TextStyle(
                      color: Colors.black54, backgroundColor: Colors.black87),
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
                "Shifoxona turi",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
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
                      "Turini tanlang",
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
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                textAlign: TextAlign.left,
                "Nogironlar uchun imkoniyatlar",
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
                          "Mavjud",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Mavjud emas",
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
            Divider(
              color: Colors.grey[200],
              height: 5,
              thickness: 5,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                textAlign: TextAlign.left,
                "Ish kunlarini belgilang ",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
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
                      "Kunlarni tanlang",
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    value: selectItem,
                    items: days.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectItem = newValue;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "24 soat ish faoliyat yuritiladi",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 46.0,
                ),
                Switch(
                  activeTrackColor: Colors.teal,
                  value: isSwiched,
                  onChanged: (value) {
                    setState(() {
                      isSwiched = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Text(
                    "Ish vaqti boshlanishi",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    width: 32.0,
                  ),
                  Text(
                    "Ish vaqti tugashi",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: _showTimePicker,
                      label: Text(
                        _timeOfDay.format(context).toString(),
                        style: TextStyle(color: Colors.black54),
                      ),
                      icon: Icon(
                        Icons.access_time,
                        color: Colors.black54,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: _showTime,
                      label: Text(
                        _timeDay.format(context).toString(),
                        style: TextStyle(color: Colors.black54),
                      ),
                      icon: Icon(
                        Icons.access_time,
                        color: Colors.black54,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Divider(
              color: Colors.grey[200],
              thickness: 5,
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                textAlign: TextAlign.left,
                "Telefon raqam 1",
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
                cursorColor: Colors.teal,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: "998941234567",
                  suffixStyle: TextStyle(
                      color: Colors.black54, backgroundColor: Colors.black87),
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
                "Telefon raqam 2",
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
                cursorColor: Colors.teal,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: "998970001122",
                  suffixStyle: TextStyle(
                      color: Colors.black54, backgroundColor: Colors.black87),
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
                "Web sahifa uchun havolasi",
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
                cursorColor: Colors.teal,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: "https://",
                  suffixStyle: TextStyle(
                      color: Colors.black54, backgroundColor: Colors.black87),
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
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                textAlign: TextAlign.left,
                "Agar sizda web-sayt mavjud bo'lmasa ijtimoiy tarmoq sahifasini havolasini kiriting",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    minimumSize: Size(310, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                onPressed: () {},
                child: Text(
                  "Ijtimoiy sahifa qo'shish",
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                textAlign: TextAlign.left,
                "Telegram Instagram Facebook YuoTube sahifasi havolasini qo'shish orqali siz o'z ijtimoiy tarmog'ingizni xam obunachilarini sonini oshirishingiz mumkin",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                width: 320.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                        child: Image.asset(
                          "images/akfamedline.jpg",
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 12.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(310, 50),
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                  onPressed: () {},
                  icon: Icon(
                    Icons.photo_camera_outlined,
                    color: Colors.teal,
                  ),
                  label: Text(
                    "Rasm qo'shish",
                    style: TextStyle(color: Colors.teal, fontSize: 16.0),
                  )),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Reg(),
                        ),
                      );
                    },
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>RegClinicTwoPage(),),);
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
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
