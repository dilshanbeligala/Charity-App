import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 105, 0, 98),
          title: Text("අත්වැල"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Container(
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
                    hintText: "Search here....",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 105, 0, 98),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                      color: Color.fromARGB(255, 105, 0, 98),
                    )),
              )),
        ));
  }
}
