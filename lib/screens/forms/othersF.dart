import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Others_form extends StatefulWidget {
  const Others_form({super.key});

  @override
  State<Others_form> createState() => _Others_formState();
}

class _Others_formState extends State<Others_form> {
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
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Image.asset(
                'assets/images/logo.png',
                height: 120,
                width: 120,
                //width: screenWidth*0.05,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text(
                "Add New Educational Charity",
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
                            hintText: "School/Institute Address",
                            prefixIcon: Icon(Icons.home),
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
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Description about Donation",
                            prefixIcon: Icon(Icons.description),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Contact Numbers",
                            prefixIcon: Icon(Icons.phone),
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
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
