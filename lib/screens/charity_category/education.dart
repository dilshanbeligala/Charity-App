import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({super.key});

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
        body: Container(
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
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Search here....",
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                  )),
            )));
  }
}
