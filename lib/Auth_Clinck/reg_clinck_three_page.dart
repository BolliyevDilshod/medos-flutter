import 'package:flutter/material.dart';
import 'package:medos/Auth_Clinck/reg_clinic_two_page.dart';

class RegClinckThreePage extends StatefulWidget {
  const RegClinckThreePage({super.key});

  @override
  State<RegClinckThreePage> createState() => _RegClinckThreePageState();
}

class _RegClinckThreePageState extends State<RegClinckThreePage> {
  final List<String> list = [
    "Diagnostika",
    "Stomatologiya",
    "Lor",
    "Urologiya"
  ];
  String? selectedItem;

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
                padding:
                    const EdgeInsets.symmetric(horizontal: 90.0, vertical: 5.0),
                child: Text(
                  "Tibbiy xizmatlar",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "Shifoxanada mavjud tibbiy xizmatlar va ularning narxi haqida batafsil ma'lumot bering",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  color: Colors.teal[50],
                  height: 100.0,
                  width: 320.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Shuni yodda saqlang. Tibbiy xizmat va diagnostik xizmat bir-biridan farq qiladi. Ushbu bo'limda faqat tibbiy xizmatlar kiritilishi kerak",
                          style: TextStyle(color: Colors.black87),
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
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Tibbiy xizmat",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  textAlign: TextAlign.left,
                  "Tibbiy xizmat turi",
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
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
                        "Tanlanmagan",
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
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 180.0,
                  width: 320.0,
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Text(
                                "Tibbiy xizmat nomi",
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                            TextField(
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16.0,
                              ),
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                  hintText: "Tibbiy xizmat nomi kiritilmagan",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0))),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Text(
                                "Tibbiy xizmat narxi",
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                            TextField(
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16.0,
                              ),
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                  hintText:
                                      "Tibbiy xizmat narxi                          UZS",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0))),
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(310.0, 50.0),
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                  onPressed: () {},
                  icon: Icon(
                    size: 30.0,
                    Icons.add,
                    color: Colors.teal,
                  ),
                  label: Text(
                    textAlign: TextAlign.center,
                    "Tibbiy xizmat qo'shish",
                    style: TextStyle(color: Colors.teal, fontSize: 16.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Ushbu tugmachani bosish orqali yangi tibbiy xizmat qo'shishingiz mumkin",
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.grey[200],
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(310.0, 50.0),
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                  onPressed: () {},
                  icon: Icon(
                    size: 30.0,
                    Icons.add,
                    color: Colors.teal,
                  ),
                  label: Text(
                    textAlign: TextAlign.center,
                    "Tibbiy xizmat turini yaratish",
                    style: TextStyle(color: Colors.teal, fontSize: 16.0),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Ushbu tugmachani bosish orqali yangi turdagi tibbiy xizmat yaratishingiz mumkin",
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Divider(
                thickness: 5,
                color: Colors.grey[200],
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Elektron fayl",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  color: Colors.teal[50],
                  height: 140.0,
                  width: 320.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Agar shifoxonangiz tibbiy xizmatlar soni ko‘p bo‘lsa yoki ularni Excel formatdagi elektron fayli mavjud bo‘lsa uni yuklashingiz mumkin. Elektron fayldagi ma’lumot tartibi1-ustun: xizmat turi, 2-ustun: xizmat nomi, 3-ustun: xizmat narxi kabi bo‘lishi kerak.",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(310.0, 50.0),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(
                          width: 1.0,
                          color: Colors.grey,
                        )
                      )),
                  onPressed: () {},
                  icon: Icon(
                    size: 25.0,
                    Icons.sim_card_download_outlined,
                    color: Colors.teal,
                  ),
                  label: Text(
                    textAlign: TextAlign.center,
                    "Elektron faylni yuklash",
                    style: TextStyle(color: Colors.black87, fontSize: 16.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Faqat PDF, JPG, JPEG, PNG  kabi fayllarni yuklang (max. 5mb)",
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 5,
                color: Colors.grey[200],
              ),
              SizedBox(
                height: 10.0,
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
                            builder: (context) => RegClinicTwoPage(),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>RegClinckThreePage(),),);
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
            ],
          ),
        ),
      ),
    );
  }
}
