import 'package:flutter/material.dart';

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
      body: Container(
        child: Form(
          child: Column(
            children: [
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
