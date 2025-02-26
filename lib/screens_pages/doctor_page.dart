import 'package:flutter/material.dart';
class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  String? selectedValue;
  List<String> listdropdown = ["Diagnostika", "Lor", "Urologiya", "Onkologiya"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Olmazor tumani",style: TextStyle(color: Colors.black87),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Container(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Mutaxasislik",style: TextStyle(color: Colors.black87,fontSize: 18.0),),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[200],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Mutaxasisliklar",style: TextStyle(color: Colors.black87,fontSize: 18.0),),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[200],

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
                          child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Reyting",style: TextStyle(color: Colors.black87,fontSize: 18.0),),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey[200],

                              ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
                          child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Mutaxasislik turi",style: TextStyle(color: Colors.black87,fontSize: 18.0),),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey[200],

                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      );
  }
}
