import 'package:charity_app/check_internet_connection.dart/check_internet_connection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Donation_page extends StatefulWidget {
  const Donation_page({super.key});

  @override
  State<Donation_page> createState() => _Donation_pageState();
}

class _Donation_pageState extends State<Donation_page> {
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
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(54, 155, 39, 176),
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(width: 0.5, color: Colors.black.withOpacity(.5)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "nimaliudeshika@gmail.com",
                            style: GoogleFonts.inter(
                                fontSize: 15, color: Colors.black),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(54, 155, 39, 176),
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(width: 0.5, color: Colors.black.withOpacity(.5)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "nimaliudeshika@gmail.com",
                            style: GoogleFonts.inter(
                                fontSize: 15, color: Colors.black),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(54, 155, 39, 176),
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(width: 0.5, color: Colors.black.withOpacity(.5)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "nimaliudeshika@gmail.com",
                            style: GoogleFonts.inter(
                                fontSize: 15, color: Colors.black),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
