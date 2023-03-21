import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Clothes_form extends StatefulWidget {
  const Clothes_form({super.key});

  @override
  State<Clothes_form> createState() => _Clothes_formState();
}

class _Clothes_formState extends State<Clothes_form> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Image.asset(
              'assets/images/load.png',
              height: 100,
              //width: screenWidth*0.05,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Text(
              "Add New Clothes Charity",
              style: GoogleFonts.inter(color: Colors.black, fontSize: 20),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter District",
                          prefixIcon: Icon(Icons.map),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "School/Institute",
                          prefixIcon: Icon(Icons.school),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "List of Items",
                          prefixIcon: Icon(Icons.list),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Number of Students",
                          prefixIcon: Icon(Icons.people),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Description about Donation",
                          prefixIcon: Icon(Icons.description),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
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
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (_) => SignIn()));
                            },
                            child: Text(
                              "ADD",
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
