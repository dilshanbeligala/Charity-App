import 'package:charity_app/check_internet_connection.dart/check_internet_connection.dart';
import 'package:charity_app/screens/charity_Des.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notification_page extends StatefulWidget {
  const Notification_page({super.key});

  @override
  State<Notification_page> createState() => _Notification_pageState();
}

class _Notification_pageState extends State<Notification_page> {
  @override
  Widget build(BuildContext context) {
    return InternetCheckWrapper(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 105, 0, 98),
          title: Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Text("අත්වැල"),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Card(
                color: Color.fromARGB(54, 155, 39, 176),
                elevation: 3,
                shadowColor: Colors.black.withOpacity(.5),
                child: GestureDetector(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "nimaliudeshika@gmail.com",
                              style: GoogleFonts.inter(
                                  fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              "  Added New Charity",
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Educational Charity",
                                style: GoogleFonts.inter(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 105, 0, 98),
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("See More >"),
                          )
                        ],
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Charity_Des()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Card(
                color: Color.fromARGB(54, 155, 39, 176),
                elevation: 3,
                shadowColor: Colors.black.withOpacity(.5),
                child: GestureDetector(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "nimaliudeshika@gmail.com",
                              style: GoogleFonts.inter(
                                  fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              "  Added New Charity",
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Educational Charity",
                                style: GoogleFonts.inter(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 105, 0, 98),
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("See More >"),
                          )
                        ],
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Charity_Des()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Card(
                color: Color.fromARGB(54, 155, 39, 176),
                elevation: 3,
                shadowColor: Colors.black.withOpacity(.5),
                child: GestureDetector(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "nimaliudeshika@gmail.com",
                              style: GoogleFonts.inter(
                                  fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              "  Added New Charity",
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Educational Charity",
                                style: GoogleFonts.inter(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 105, 0, 98),
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("See More >"),
                          )
                        ],
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Charity_Des()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
