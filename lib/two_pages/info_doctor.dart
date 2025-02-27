import 'package:flutter/material.dart';

class InfoDoctor extends StatefulWidget {
  const InfoDoctor({super.key});

  @override
  State<InfoDoctor> createState() => _InfoDoctorState();
}

class _InfoDoctorState extends State<InfoDoctor> {
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
                maxRadius: 72.0,
                backgroundColor: Colors.teal,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/doktor1.jpg"),
                  maxRadius: 70.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
