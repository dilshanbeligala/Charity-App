import 'package:charity_app/screens/forms/clothsF.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Clothes extends StatelessWidget {
  const Clothes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 105, 0, 98),
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text("අත්වැල"),
        ),
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
                          MaterialPageRoute(builder: (_) => Clothes_form()));
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
                child: TextFormField(
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
                )),
          ],
        ),
      ),
    );
  }
}
