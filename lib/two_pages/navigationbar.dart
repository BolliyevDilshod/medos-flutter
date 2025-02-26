import 'package:flutter/material.dart';
import 'package:medos/screens_pages/doctor_page.dart';
import 'package:medos/screens_pages/home.dart';
import 'package:medos/screens_pages/pharmacy_page.dart';
import 'package:medos/screens_pages/services_page.dart';
import 'package:get/get.dart';

class Navigationbar extends StatelessWidget {
  const Navigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 2,
            backgroundColor: Colors.blueGrey,
            indicatorColor: Colors.teal,
            height: 70.0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index)=>controller.selectedIndex.value =index,
            destinations: [
              NavigationDestination(icon: Icon(Icons.home_outlined), label: "Shifoxonalar",),
              NavigationDestination(icon: Icon(Icons.groups_outlined), label: "Shifokorlar"),
              NavigationDestination(icon: Icon(Icons.home_mini_sharp), label: "Dorixonalar"),
              NavigationDestination(icon: Icon(Icons.monitor_heart_outlined), label: "Xizmatlar"),
            ]
        ),
      ),
      body:Obx(()=> controller.pages[controller.selectedIndex.value]),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int>selectedIndex = 0.obs;
  List pages = [
    HomePage(),
    DoctorPage(),
    PharmacyPage(),
    ServicesPage(),

  ];
}

