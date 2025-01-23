import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class RegMapPage extends StatefulWidget {
  const RegMapPage({super.key});

  @override
  State<RegMapPage> createState() => _RegMapPageState();
}

class _RegMapPageState extends State<RegMapPage> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _langLat = CameraPosition(
    target: LatLng(39.978002, 65.811049),
    zoom: 14.0,
  );
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          body: GoogleMap(
                initialCameraPosition: _langLat,
                onMapCreated: (GoogleMapController controller){
                  _controller.complete(controller);
                }
            ),
        );
  }
}
