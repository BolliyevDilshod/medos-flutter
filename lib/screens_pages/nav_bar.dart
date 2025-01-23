import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.how_to_reg_sharp), label: "Shifokorlar"),
        NavigationDestination(icon: Icon(Icons.location_on_outlined), label: "Shifoxonalar"),
        NavigationDestination(icon: Icon(Icons.home_mini_sharp), label: "Dorixonalar"),
        NavigationDestination(icon: Icon(Icons.monitor_heart_outlined), label: "Xizmatlar")
      ]),
    );
  }
}
