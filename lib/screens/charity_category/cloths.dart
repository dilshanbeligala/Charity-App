import 'package:charity_app/model/charity_model.dart';
import 'package:charity_app/screens/forms/educatinF.dart';
import 'package:charity_app/screens/notification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Clothes extends StatefulWidget {
  const Clothes({super.key});

  @override
  State<Clothes> createState() => _ClothesState();
}

class _ClothesState extends State<Clothes> {
  static List<Charity_Model> district_list = [
    Charity_Model("Ampara"),
    Charity_Model("Anuradhapura"),
    Charity_Model("Badulla"),
    Charity_Model("Batticaloa"),
    Charity_Model("Galle"),
    Charity_Model("Gampaha"),
    Charity_Model("Hambantota"),
    Charity_Model("Jaffna"),
    Charity_Model("Kaluthara"),
    Charity_Model("Kandy"),
    Charity_Model("Kegalle"),
    Charity_Model("Kilinochchi"),
    Charity_Model("Kurunegala"),
    Charity_Model("Mannar"),
    Charity_Model("Matale"),
    Charity_Model("Matara"),
    Charity_Model("Monaragala"),
    Charity_Model("Mullativu"),
    Charity_Model("Polonnaruwa"),
    Charity_Model("Puttalam"),
    Charity_Model("Ratnapura"),
    Charity_Model("Trincomalee"),
    Charity_Model("Vauniya"),
  ];
  List<Charity_Model> display_list = List.from(district_list);

  void updateList(String value) {
    setState(() {
      display_list = district_list
          .where((element) =>
              element.district!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 105, 0, 98),
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text("අත්වැල"),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => Notification_page()));
              },
              icon: Icon(Icons.notifications))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 105, 0, 98),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Edu_form()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Add New Charity",
                            style: GoogleFonts.inter(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 20),
              width: MediaQuery.of(context).size.width,
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: ((value) => updateList(value)),
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: "Search district here....",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 105, 0, 98),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                      color: Color.fromARGB(255, 105, 0, 98),
                    )),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: display_list.length,
                  itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: Text(
                          display_list[index].district!,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        onTap: (() {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: ((context) => ShedPage())));
                        }),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
