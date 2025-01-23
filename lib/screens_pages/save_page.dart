import 'package:flutter/material.dart';

class SavePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true ,
          backgroundColor: Colors.white,
          title: Text(
            "Saqlanganlar",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.teal,
            labelColor: Colors.teal,
            tabs: [
              Tab(
                child: Text(
                  "Shifoxonalar",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Doktorlar",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 12.0,
                              ),
                              ClipRRect(
                                child: Image.asset(
                                  "images/akfamedline.jpg",
                                  fit: BoxFit.contain,
                                  width: 325.0,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              SizedBox(height: 5.0),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 6.0, horizontal: 18.0),
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
                                    width: 18.0,
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
                                height: 8.0,
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
                                    "Olmazor tumani",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 18.0,
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
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "9:00 da ochiladi",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
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
                                          "Stomatolog",
                                          style:
                                              TextStyle(color: Colors.black87),
                                        ),
                                      ),
                                      color: Colors.grey[300],
                                    ),
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Lor",
                                          style:
                                              TextStyle(color: Colors.black87),
                                        ),
                                      ),
                                      color: Colors.grey[300],
                                    ),
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Urolog",
                                          style:
                                              TextStyle(color: Colors.black87),
                                        ),
                                      ),
                                      color: Colors.grey[300],
                                    ),
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Urolog",
                                          style:
                                              TextStyle(color: Colors.black87),
                                        ),
                                      ),
                                      color: Colors.grey[300],
                                    ),
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Urolog",
                                          style:
                                              TextStyle(color: Colors.black87),
                                        ),
                                      ),
                                      color: Colors.grey[300],
                                    ),
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Urolog",
                                          style:
                                              TextStyle(color: Colors.black87),
                                        ),
                                      ),
                                      color: Colors.grey[300],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                            ],
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 10.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("images/tiger.jpg"),
                                      radius: 40.0,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5.0,
                                        ),
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
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Stomatolog-Terapevt",
                                          style:
                                              TextStyle(color: Colors.black87),
                                        ),
                                      ),
                                      color: Colors.grey[300],
                                    ),
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Stomatolog-Jarrox",
                                          style:
                                              TextStyle(color: Colors.black87),
                                        ),
                                      ),
                                      color: Colors.grey[300],
                                    ),
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Bolalar-Stomatolog",
                                          style:
                                              TextStyle(color: Colors.black87),
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
        ]),
      ),
    );
  }
}
