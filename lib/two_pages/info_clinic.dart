import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medos/screens_pages/home.dart';
import 'package:medos/screens_pages/map_page.dart';

class InfoClinic extends StatefulWidget {
  const InfoClinic({super.key});

  @override
  State<InfoClinic> createState() => _InfoClinicState();
}

class _InfoClinicState extends State<InfoClinic> {
  final Completer<GoogleMapController> _completer = Completer();

  static const CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(39.978002, 65.811049),
    zoom: 8.0,
  );

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
                          child: Text("Shifokorlar"),
                        ),
                        Tab(
                          child: Text("Izohlar"),
                        ),
                        Tab(
                          child: Text("Xizmatlar"),
                        )
                      ],
                      labelPadding: EdgeInsets.only(left: 5.0, right: 5.0),
                    ),
                  ),
                  Container(
                    width: 360.0,
                    height: 500.0,
                    child: TabBarView(children: [
                      SingleChildScrollView(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Text(
                                  "Shifoxona haqida",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
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
                              SizedBox(
                                height: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Container(
                                  width: 340.0,
                                  height: 150.0,
                                  child: GoogleMap(
                                      initialCameraPosition: _cameraPosition,
                                      onMapCreated:
                                          (GoogleMapController controller) {
                                        _completer.complete(controller);
                                      }),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Text(
                                  "Manzil",
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Shayxontohur tumani, Kichik Xalqa yo‘li, 9-uy  Beruniy metrosi",
                                        style: TextStyle(color: Colors.black87),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey[200],
                                        child: Icon(
                                          Icons.near_me_rounded,
                                          color: Colors.teal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey[200],
                                indent: 15.0,
                                endIndent: 15.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Text(
                                  "Ish vaqti",
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "09:00 dan 18:00 gacha",
                                      style: TextStyle(
                                          color: Colors.black87, fontSize: 18),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.grey,
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey[200],
                                indent: 15.0,
                                endIndent: 15.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Text(
                                  "Bog'lanish",
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Row(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "+998 94 123 45 67",
                                      style: TextStyle(
                                          color: Colors.black87, fontSize: 18),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[200],
                                        child: Icon(
                                      Icons.call,
                                      color: Colors.teal,
                                      size: 20,
                                    ))
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey[200],
                                indent: 15.0,
                                endIndent: 15.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Text(
                                  "Web sayt",
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "medos.uz",
                                      style: TextStyle(
                                          color: Colors.black87, fontSize: 18),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.grey,
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 3,
                                color: Colors.grey[200],

                              ),
                            ],
                          ),
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
