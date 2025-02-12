import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Buttomnavbar extends StatefulWidget {
  const Buttomnavbar({super.key});

  @override
  State<Buttomnavbar> createState() => _ButtomnavbarState();
}

class _ButtomnavbarState extends State<Buttomnavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        tabs: [
          GButton(
              icon: Icons.location_on_outlined,text: "Shifoxonalar",),
          GButton(
            icon: Icons.groups_outlined,text: "Shifokorlar",),
          GButton(
            icon: Icons.home_mini_sharp,text: "Dorixonalar",),
          GButton(
            icon: Icons.monitor_heart_outlined,text: "Xizmatlar",),
        ],
      ),
    );
  }
}
