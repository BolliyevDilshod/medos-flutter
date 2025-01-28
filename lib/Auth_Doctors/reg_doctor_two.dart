import 'package:flutter/material.dart';
import 'package:medos/Auth_Doctors/reg_doctor_three.dart';

class RegDoctorTwo extends StatefulWidget {
  const RegDoctorTwo({super.key});

  @override
  State<RegDoctorTwo> createState() => _RegDoctorTwoState();
}

class _RegDoctorTwoState extends State<RegDoctorTwo> {
  final List<String> list = [
    "Stomatolog",
    "Lor",
    "Jarrox",
    "Urolog",
    "Kosmetolog"
  ];
  String? selectedItem;

  List<String> subMut = [
    "Bolalar stomatologi",
    "Stomatolog jarrox",
    "Implantant",
    'Davolovchi stomatolog'
  ];
  String? selectItem;

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "Siz qanday sohada faoliyat olib borasiz?",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "Foydalanuvchi sizni topishlari oson bo'lishi uchun bu juda muhim ",
                  style: TextStyle(color: Colors.black38, fontSize: 16.0),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  textAlign: TextAlign.left,
                  "Asosiy mutaxassislikni tanlang",
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
                        "M-n Stomatolog",
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
                  "Mutaxassislik turini tanlang",
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
                        "Stomatolog jarrox",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      value: selectItem,
                      items: subMut.map((String list) {
                        return DropdownMenuItem<String>(
                          value: list,
                          child: Text(list),
                        );
                      }).toList(),
                      onChanged: (newValue) {
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  textAlign: TextAlign.left,
                  "Necha yillik tajribaga egasiz",
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
                padding:
                const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Birinchi konsultatsiya narxi",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.0,
                  ),
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText:
                      "Birinchi konsultatsiya narxi            UZS",
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(15.0))),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Ikkinchi konsultatsiya narxi",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.0,
                  ),
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText:
                      "Ikkinchi konsultatsiya narxi           UZS",
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(15.0))),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  textAlign: TextAlign.start,
                  "Bu maydon to'ldirilishi muhum emas.Bo'sh qoldirsangiz xam bo'ladi ",
                  style: TextStyle(color: Colors.black38, fontSize: 16.0),
                ),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Avtobiografiyangizni kiriting",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  minLines: 2,
                  maxLines: 10,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.0,
                  ),
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText:
                      "Yutuqlaringiz, ta'lim olgan oliygohingiz va shunga o'xshash ma'lumotlar va h.k ",
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(15.0))),
                  keyboardType: TextInputType.multiline,
                ),
              ),
              SizedBox(height: 20,),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>RegDoctorThree() ),);
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
}
