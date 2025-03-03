import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medos/two_pages/write_comment_page.dart';

class InfoDoctor extends StatefulWidget {
  const InfoDoctor({super.key});

  @override
  State<InfoDoctor> createState() => _InfoDoctorState();
}

class _InfoDoctorState extends State<InfoDoctor> {
  final Completer<GoogleMapController> _completer = Completer();

  static const CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(39.978002, 65.811049),
    zoom: 8.0,
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.favorite_border_outlined,
                color: Colors.black87,
              )
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: CircleAvatar(
                maxRadius: 68.0,
                backgroundColor: Colors.teal,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/doktor1.jpg"),
                  maxRadius: 66.0,
                  minRadius: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Aktubayev Alisher",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Stomatolog",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  Text(
                    "|",
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                  Text(
                    "16 yillik tajriba",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  Text(
                    "|",
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                  Text(
                    "1.24 km",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star_outlined,
                  color: Colors.red[500],
                ),
                SizedBox(
                  width: 4.0,
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
            SizedBox(
              width: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                textAlign: TextAlign.center,
                "Akademik Y.X.Turakulov nomidagi Respublika ixtisoslashtirilgan endokrinolog",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16.0,
                ),
              ),
            ),
            Container(
              child: Wrap(
                alignment: WrapAlignment.center,
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
              height: 1,
              color: Colors.grey[100],
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
                    child: Text("Izohlar"),
                  ),
                ],
                labelPadding: EdgeInsets.only(left: 5.0, right: 5.0),
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: [
                    common(),
                    Container(
                      color: Colors.yellowAccent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget common() {
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
              Text(
                "Ish vaqti",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
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
                height: 10.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: Colors.black87,
                  ),
                  Text(
                    "9:00 - 17:00",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                height: 1,
                thickness: 2,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Xizmat narxi",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
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
              Row(
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
              SizedBox(
                height: 10.0,
              ),
              Divider(
                height: 1,
                thickness: 2,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Shifokor haqida",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Aktubayeva Anora ko‘p yillar davomida teri, "
                "soch va tirnoq kasalliklarini tashxislash, "
                "davolash va oldini olish bilan shug‘ullanadi."
                " U teri saratonini tashxislash uchun "
                "dermatoskopiya texnikasiga ega va radio "
                "to‘lqinli jarrohlik yordamida teridagi sh....",
                style: TextStyle(
                  color: Colors.black87,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 6,
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                height: 1,
                thickness: 2,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Ish joyi",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Akademik Y.X.Turakulov nomidagi Respublika ixtisoslashtirilgan endokrinolog",
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 340.0,
                height: 150.0,
                child: GoogleMap(
                    initialCameraPosition: _cameraPosition,
                    onMapCreated: (GoogleMapController controller) {
                      _completer.complete(controller);
                    }),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Manzil",
                style: TextStyle(color: Colors.grey[500]),
              ),
              Row(
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
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Bog'lanish",
                style: TextStyle(color: Colors.grey[500]),
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "+99894 630 05 63",
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
              SizedBox(
                height: 10.0,
              ),
              Divider(
                height: 1,
                thickness: 2,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_outlined,
                    color: Colors.red[500],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "4.9",
                    style: TextStyle(
                        color: Colors.red[300], fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "16 ta izohlar",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              ClipRRect(
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
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 160.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          width: 264.0,
                          height: 160.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.teal,
                                      child: Text("J"),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      "Aktubayev Alisher",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      unratedColor: Colors.grey[400],
                                      initialRating: 0,
                                      minRating: 0,
                                      itemSize: 15.0,
                                      direction: Axis.horizontal,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star_rate,
                                        color: Colors.teal,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      "27-fevral 2025",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Chiroyli zamonaviy klinika. Men operatsiyani "
                                  "o‘tkazdim va keyin bir necha kun o‘sha erda qoldim. "
                                  "Yoqimli va sezgir tibbiyot xodimlari, sabrlari ",
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                height: 1,
                thickness: 2,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "O'xshash shifokorlar",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                height: 150.0,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                                      SizedBox(
                                        width: 10.0,
                                      ),
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
                                    SizedBox(
                                      width: 8.0,
                                    ),
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
                              width: 5.0,
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
                              width: 5.0,
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
                              width: 5.0,
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
                         Row(
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

                        Row(
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

                        Row(
                          children: [
                            GestureDetector(
                              child:  Text(
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
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
