import 'package:flutter/material.dart';

class RegDoctorThree extends StatefulWidget {
  const RegDoctorThree({super.key});

  @override
  State<RegDoctorThree> createState() => _RegDoctorThreeState();
}

class _RegDoctorThreeState extends State<RegDoctorThree> {
  List<String> jobAddress = ["NeoLine", "AkfaMedline", "JeckSoft", "SentezLab"];
  String? selectItem;
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
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                textAlign: TextAlign.center,
                "Ish joyingiz va qabul vaqtingiz?",
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
                "Bemorlar qabulingizga kelishi va yozilishi uchun so'ralgan maydonlarni to'g'ri to'ldiring ",
                style: TextStyle(color: Colors.black38, fontSize: 16.0),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                textAlign: TextAlign.left,
                "Ish joyingizni tanlang",
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
                      "Tanlanmagan",
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    value: selectItem,
                    items: jobAddress.map((String list) {
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
                "Qabul kunlaringizni belgilang",
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
                      "Tanlanmagan",
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    value: selectItem,
                    items: jobAddress.map((String list) {
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
            SizedBox(height: 220.0),
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
