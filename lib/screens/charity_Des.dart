import 'package:flutter/material.dart';

class Charity_Des extends StatefulWidget {
  const Charity_Des({super.key});

  @override
  State<Charity_Des> createState() => _Charity_DesState();
}

class _Charity_DesState extends State<Charity_Des> {
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
    );
  }
}
