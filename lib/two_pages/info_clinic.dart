import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medos/screens_pages/home.dart';
import 'package:medos/screens_pages/map_page.dart';
import 'package:medos/two_pages/write_comment_page.dart';

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

  List<String> specialty = [
    "Androlog",
    "Urolog",
    "Lor",
    "Stomatolog",
    "UZI",
    "Labarant",
  ];

  List<String> add = [
    "Nogironlar uchun yulak",
    "Bolalar maydonchasi",
    "Avto turargoh",
    "WiFi zona",
    "Basseyn",
    "Bog'",
  ];

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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          color: Colors.orange,
                          width: 30.0,
                          height: 25.0,
                          child: Center(
                            child: Text(
                              "5.0",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
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
                    child: TabBarView(
                      children: [
                        common(),
                        doctor(),
                        comment(),
                        services(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 95.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                      onPressed: () {},
                      child: Text(
                        "Qabulga yozilish",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget common() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
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
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                width: 340.0,
                height: 150.0,
                child: GoogleMap(
                    initialCameraPosition: _cameraPosition,
                    onMapCreated: (GoogleMapController controller) {
                      _completer.complete(controller);
                    }),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Manzil",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Ish vaqti",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "09:00 dan 18:00 gacha",
                    style: TextStyle(color: Colors.black87, fontSize: 18),
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
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Bog'lanish",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "+998 94 123 45 67",
                    style: TextStyle(color: Colors.black87, fontSize: 18),
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
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Web sayt",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "medos.uz",
                    style: TextStyle(color: Colors.black87, fontSize: 18),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Shifokorlar ixtisosligi",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  Text(
                    "$specialty",
                    style: TextStyle(color: Colors.black87, fontSize: 18.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Qo'shimcha qulayliklar",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  Text(
                    "$add",
                    style: TextStyle(color: Colors.black87, fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey[200],
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget comment() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Container(
                        color: Colors.orange,
                        width: 30.0,
                        height: 25.0,
                        child: Center(
                          child: Text(
                            "4.9",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  ),
                ),
                Text(
                  "16 ta izohlar",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                child: Container(
                  color: Colors.teal[50],
                  width: 350.0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          "Baholang va izoh qoldiring",
                          style:
                              TextStyle(color: Colors.black87, fontSize: 16.0),
                        ),
                      ),
                      RatingBar.builder(
                        unratedColor: Colors.grey[400],
                        initialRating: 0,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star_rate,
                          color: Colors.teal,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WriteCommentPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Baholang",
                              style: TextStyle(
                                  color: Colors.teal,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.teal),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Icon(
                                Icons.send,
                                color: Colors.teal,
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                width: 330.0,
                height: 380.0,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: Text("D"),
                              backgroundColor: Colors.orange,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "Durdona Valiyeva",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.tealAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.tealAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.tealAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.tealAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.tealAccent,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              "4-fevral, 2025",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Text(
                          "Chiroyli zamonaviy klinika. Men operatsiyani o‘tkazdim va keyin bir "
                          "necha kun o‘sha erda qoldim. Yoqimli va sezgir tibbiyot xodimlari, "
                          "sabrlari uchun ularga alohida rahmat! Va, albatta, davolovchi shifokor "
                          "Rustam Ashurmatovga RAHMAT! Diqqatli va yoqimli shifokorlar, o‘z "
                          "sohasining professionallari. Sizga katta rahmat!!!!",
                          style:
                              TextStyle(color: Colors.black87, fontSize: 16.0),
                        ),
                      ],
                    );
                  },
                  itemCount: 5,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.teal,
            //         padding:
            //         EdgeInsets.symmetric(vertical: 15.0, horizontal: 95.0),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10.0),
            //         )),
            //     onPressed: () {},
            //     child: Text(
            //       "Qabulga yozilish",
            //       style: TextStyle(color: Colors.white, fontSize: 18.0),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget doctor() {
    return Container(
      width: 340.0,
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/tiger.jpg"),
                        radius: 40.0,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 1.0),
                          child: Text(
                            "Aktubayev Alisher",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
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
                              style: TextStyle(color: Colors.red[300]),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "152 izohlar",
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ],
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      Icons.calendar_month_outlined,
                      color: Colors.black87,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Du,Chor,Pay,Juma ",
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "9:00 - 17:00",
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w500),
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
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Stomatolog-Terapevt",
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                        color: Colors.grey[300],
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Stomatolog-Jarrox",
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                        color: Colors.grey[300],
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Bolalar-Stomatolog",
                            style: TextStyle(color: Colors.black87),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                Divider(
                  thickness: 4,
                  color: Colors.grey[300],
                ),
              ],
            );
          }),
    );
  }

  Widget services() {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.0,
              ),
              SearchBar(
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
              SizedBox(
                height: 10.0,
              ),
              Container(
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
                        child: Container(
                          height: 44.0,
                          width: 165.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Center(
                            child: Text(
                              "Diagnostika",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Tibbiy xizmatlar",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 340.0,
                height: 150.0,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, index) {
                      return Wrap(
                        direction: Axis.horizontal,
                        spacing: 2.0,
                        runSpacing: 5.0,
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Stomatolog",
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                            color: Colors.grey[300],
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Lor",
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                            color: Colors.grey[300],
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Urolog",
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                            color: Colors.grey[300],
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Laboratoriya",
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                            color: Colors.grey[300],
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "MSKT",
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                            color: Colors.grey[300],
                          ),
                        ],
                      );
                    }),
              ),
              Row(
                children: [
                  Text(
                    "Stomatolog",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "3",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bolalar stomatologi",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    "120 000 so'm",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stomatolog jarrox",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    "200 000 so'm",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stomatolog implantant",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    "1 200 000 so'm",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Text(
                    "Lor",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "2",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bolalar Lor shifokori",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    "120 000 so'm",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lor jarrox",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    "200 000 so'm",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){},
                child: Text(
                  "Barchasini ko'rsatish",
                  style: TextStyle(
                      color: Colors.teal,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.teal,
                      decorationThickness: 2),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Laboratoriya",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "150",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Qon analizi",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    "50 000 so'm",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gipatet A",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    "200 000 so'm",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gipatet B",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    "200 000 so'm",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gipatet C",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    "200 000 so'm",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Umumiy qon taxlili",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    "60 000 so'm",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){},
                child: Text(
                  "Barchasini ko'rsatish",
                  style: TextStyle(
                      color: Colors.teal,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.teal,
                      decorationThickness: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
