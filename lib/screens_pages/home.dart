import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:medos/screens_pages/menu_reg.dart';
import '../two_pages/buttomNavBar.dart';
import '../two_pages/info_clinic.dart';
import 'map_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(children: [
          Text(
            "Toshkent shahar",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          SizedBox(width: 4.0),
          Icon(
            Icons.navigate_next,
            color: Colors.black87,
          )
        ]),
        centerTitle: true,
      ),
      bottomNavigationBar:
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
            child: GNav(
              gap: 8,
              backgroundColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade300,
              padding: EdgeInsets.all(10),
              color: Colors.black87,
              activeColor: Colors.teal,
              onTabChange: (index){
                print(index);
              },
              tabs: const[
                GButton(
                  icon: Icons.location_on_outlined,text: "Shifoxona",),
                GButton(
                  icon: Icons.groups_outlined,text: "Shifokor",),
                GButton(
                  icon: Icons.home_mini_sharp,text: "Dorixona",),
                GButton(
                  icon: Icons.monitor_heart_outlined,text: "Xizmat",),
              ],
            ),
          ),
        ),

      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
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
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 1.0, horizontal: 10.0),
                child: Container(
                  height: 60,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.grey[200],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                                iconEnabledColor: Colors.black87,
                                iconDisabledColor: Colors.teal,
                                iconSize: 30.0,
                                borderRadius: BorderRadius.circular(20.0),
                                dropdownColor: Colors.white,
                                hint: Text(
                                  "Mulkchilik",
                                  style: TextStyle(color: Colors.black87),
                                ),
                                value: selectedValue,
                                items: listdropdown.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.black87),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedValue = newValue!;
                                  });
                                }),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[300],
                thickness: 5.0,
              ),
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
                            Stack(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "images/akfamedline.jpg",
                                    fit: BoxFit.contain,
                                    width: 325.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                Positioned(
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    size: 30.0,
                                  ),
                                  bottom: 210.0,
                                  right: 20.0,
                                ),
                              ],
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
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "5.0",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    color: Colors.orange,
                                    width: 30.0,
                                    height: 25.0,
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
                                        "Urolog",
                                        style: TextStyle(color: Colors.black87),
                                      ),
                                    ),
                                    color: Colors.grey[300],
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
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.teal,
                                        decorationThickness: 2,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => InfoClinic(),
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
                                      style: TextStyle(color: Colors.teal),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      drawer: Drawer(
        child: Menu_Reg(),
        backgroundColor: Colors.white,
      ),
    );
  }
}



