import 'package:flutter/material.dart';
import '../two_pages/info_doctor.dart';
import 'map_page.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  String? selectedValue;
  List<String> listdropdown = ["Diagnostika", "Lor", "Urologiya", "Onkologiya"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MapPage()),
          );
        },
        backgroundColor: Colors.black87,
        icon: Icon(Icons.map),
        label: Text(
          "Xaritadan",
          style: TextStyle(fontSize: 16.0),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Olmazor tumani",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 3.0),
                child: SearchBar(
                  leading: const Icon(
                    Icons.search_outlined,
                    color: Colors.black87,
                    size: 25.0,
                  ),
                  hintText: "Qidirish",
                  hintStyle: WidgetStateProperty.all(
                    TextStyle(color: Colors.black26),
                  ),
                  textStyle:
                      WidgetStateProperty.all(TextStyle(color: Colors.black87)),
                  backgroundColor: WidgetStateProperty.all(Colors.grey[200]),
                  shadowColor: WidgetStateProperty.all(Colors.black87),
                  elevation: WidgetStateProperty.all(1.0),
                  padding: WidgetStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 1.0),
                  ),
                ),
              ),
              Container(
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 12.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Mutaxasislik",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18.0),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[200],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 12.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Mutaxasisliklar",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18.0),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[200],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 12.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Reyting",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18.0),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[200],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 12.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Mutaxasislik turi",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18.0),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[200],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: ListView.builder(
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0, vertical: 10.0),
                                          child: CircleAvatar(
                                            child: CircleAvatar(
                                              backgroundImage:
                                                  AssetImage("images/tiger.jpg"),
                                              radius: 40.0,
                                            ),
                                            maxRadius: 42.0,
                                            backgroundColor: Colors.teal,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 6.0,
                                                      horizontal: 1.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Aktubayev Alisher",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18.0),
                                                  ),
                                                  SizedBox(
                                                    width: 50.0,
                                                  ),
                                                  Icon(Icons.favorite_border_outlined,color: Colors.black87,)
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star_outlined,
                                                  color: Colors.red[500],
                                                ),
                                                Text(
                                                  "4.95",
                                                  style: TextStyle(
                                                      color: Colors.red[300]),
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Text(
                                                  "152 izohlar",
                                                  style: TextStyle(
                                                      color: Colors.grey[500]),
                                                ),
                                                SizedBox(
                                                  width: 50.0,
                                                ),
                                                Text(
                                                  "4.95 km",
                                                  style: TextStyle(
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 18.0,
                                        ),
                                        Icon(
                                          Icons.card_travel_sharp,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          "Stomatolog-Jarrox",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        const Text(
                                          "16 yillik tajriba",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 18.0,
                                        ),
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          "AkfaMedline",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 18.0,
                                        ),
                                        Icon(
                                          Icons.calendar_month_outlined,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          "Du,Chor,Pay,Juma ",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          "9:00 - 17:00",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Container(
                                      child: Wrap(
                                        spacing: 8.0,
                                        runSpacing: 5.0,
                                        direction: Axis.horizontal,
                                        children: [
                                          Card(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Stomatolog-Terapevt",
                                                style: TextStyle(
                                                    color: Colors.black87),
                                              ),
                                            ),
                                            color: Colors.grey[300],
                                          ),
                                          Card(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Stomatolog-Jarrox",
                                                style: TextStyle(
                                                    color: Colors.black87),
                                              ),
                                            ),
                                            color: Colors.grey[300],
                                          ),
                                          Card(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Bolalar-Stomatolog",
                                                style: TextStyle(
                                                    color: Colors.black87),
                                              ),
                                            ),
                                            color: Colors.grey[300],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Divider(
                                      indent: 20.0,
                                      endIndent: 20.0,
                                      color: Colors.grey[300],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Birinchi konsultatsiya ............",
                                            style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            "550 000so'm",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Takroriy konsultatsiya ......",
                                            style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            "Kelishuv asosida",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: Text(
                                              "Batafsil",
                                              style: TextStyle(
                                                color: Colors.teal,
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.w500,
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: Colors.teal,
                                                decorationThickness: 2,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    InfoDoctor(),
                                              ),
                                            );
                                          },
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0),
                                          child: ElevatedButton.icon(
                                            onPressed: () {},
                                            label: Text(
                                              "Navigator",
                                              style:
                                                  TextStyle(color: Colors.teal),
                                            ),
                                            icon: Icon(
                                              Icons.near_me_rounded,
                                              color: Colors.teal,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.grey[100],
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.teal,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                    ),
                                    Divider(
                                      thickness: 4,
                                      color: Colors.grey[300],
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
