import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:medos/screens_pages/home.dart';
import 'package:medos/screens_pages/pharmacy_page.dart';
import 'package:medos/screens_pages/services_page.dart';
import 'package:get/get.dart';
import '../screens_pages/doctor_page.dart';

class Buttomnavbar extends StatefulWidget {
  const Buttomnavbar({super.key});

  @override
  State<Buttomnavbar> createState() => _ButtomnavbarState();
}

class _ButtomnavbarState extends State<Buttomnavbar> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: GNav(
        gap: 8,
        backgroundColor: Colors.white,
        selectedIndex: controller.selectedIndex.value,
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 15.0,
        padding: EdgeInsets.all(10),
        tabMargin: EdgeInsets.all(10.0),
        color: Colors.black87,
        activeColor: Colors.teal,
        onTabChange: (index) => controller.selectedIndex.value = index,
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: "Shifoxonalar",
          ),
          GButton(
            icon: Icons.groups_outlined,
            text: "Shifokorlar",
          ),
          GButton(
            icon: Icons.home_mini_sharp,
            text: "Dorixonalar",
          ),
          GButton(
            icon: Icons.monitor_heart_outlined,
            text: "Xizmatlar",
          ),
        ],
      ),
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  List pages = [
    HomePage(),
    DoctorPage(),
    PharmacyPage(),
    ServicesPage(),
  ];
}
