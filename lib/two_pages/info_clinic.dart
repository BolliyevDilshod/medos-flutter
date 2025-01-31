import 'package:flutter/material.dart';
import 'package:medos/screens_pages/home.dart';

class InfoClinic extends StatefulWidget {
  const InfoClinic({super.key});

  @override
  State<InfoClinic> createState() => _InfoClinicState();
}

class _InfoClinicState extends State<InfoClinic> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          "images/akfamedline.jpg",
                          fit: BoxFit.contain,
                          width: 380.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 40.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black87,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 15.0),
                    child: Text(
                      "Akfa Medline ixtisoslashtirilgan xususiy klinikasi ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        "5.0",
                        style: TextStyle(
                          backgroundColor: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "324 ta",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      const Text(
                        "Izoh",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "Kasalxona",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.black87,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "Yopiq",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "9:00 da ochiladi",
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[200],
                    thickness: 1,
                  ),
                  Container(
                    child: const TabBar(
                      indicatorColor: Colors.teal,
                      labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                      dividerColor: Colors.grey,
                      tabs: [
                        Tab(
                          child: Text("Umumiy"),
                        ),
                        Tab(
                          child: Text("Shifokor"),
                        ),
                        Tab(
                          child: Text("Izoh"),
                        ),
                        Tab(
                          child: Text("Xizmat"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 360.0,
                    height: 500.0,
                    child: TabBarView(children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.0,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text(
                                "Shifoxona haqida",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text(
                                "Diagnostika va davolash xizmatlarining to‘liq to‘plamiga "
                                    "ega bo‘lgan Akfa Medline ko‘p tarmoqli tibbiy "
                                    "markazi yordamida siz tez va oson sifatli tibbiy yordam "
                                    "olishingiz mumkin. Yuqori malakali xodimlar va eng sifatli "
                                    "uskunalarga ega klinika sog‘ligingiz uchun",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.red,
                      ),
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        color: Colors.grey,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
