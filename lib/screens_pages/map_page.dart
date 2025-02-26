import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'home.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  String? selectItem;
  List<String> listItem = ["Mulkchilik", " Shifoxona Turi", "Ish vaqti"];
  late GoogleMapController mapController;

  final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(41.367279, 69.196026), // Toshkent
    zoom: 12.0,
  );
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        backgroundColor: Colors.black87,
        icon: Icon(
          Icons.arrow_back,
        ),
        label: Text(
          "Orqaga",
          style: TextStyle(fontSize: 16.0),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
              "566 ta shifoxona",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
            ),
        ),
      body:Column(
          children: [
            Container(
              color: Colors.white,
              height: 65.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[300],
                      ),
                      child: DropdownButton<String>(
                          borderRadius: BorderRadius.circular(20.0),
                          dropdownColor: Colors.white,
                          iconEnabledColor: Colors.black87,
                          hint: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Mulkchilik",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                          items: listItem.map((String value) {
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
                              selectItem = newValue!;
                            });
                          }),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                child: SafeArea(
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: _initialCameraPosition,
                    mapType: MapType.normal,
                    myLocationEnabled: true,
                    myLocationButtonEnabled: true,
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}


