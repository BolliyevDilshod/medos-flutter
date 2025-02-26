import '../screens_pages/doctor_page.dart';
import '../screens_pages/home.dart';
import '../screens_pages/pharmacy_page.dart';
import '../screens_pages/services_page.dart';


class ButtomControllerGNav {
  void index=0;
  var pages = [
    HomePage(),
    DoctorPage(),
    PharmacyPage(),
    ServicesPage()
  ];

}

