import 'package:charity_app/screens/get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';

void main() {
  
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Future<String> _loadDataFuture = Future.delayed(
    Duration(seconds: 4),
    () => "Some Data",
  ); // Replace with your own Future that loads the data for your app

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 105, 0, 98),
      body: Center(
        child: FutureBuilder(
          future: _loadDataFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // Replace this with your own widget tree for your app
              return GetStarted();
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            } else {
              // While waiting for the data to load, show a loading indicator and an image
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 16),
                  Image.asset(
                    "assets/images/load.png",
                    fit: BoxFit.cover, // Replace with your own image asset path
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CircularProgressIndicator(
                    strokeWidth: 5,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}


// // class MyLoadingIndicator extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: loadImage(),
//       builder: (BuildContext context, AsyncSnapshot<Image> snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           return Center(
//             child: snapshot.data,
//           );
//         } else {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       },
//     );
//   }

//   Future<Image> loadImage() async {
//     Completer<Image> completer = Completer();
//     AssetImage('assets/loading_image.png').resolve(ImageConfiguration())
//       .addListener(
//         ImageStreamListener((ImageInfo info, bool _) => completer.complete(info.image))
//     );
//     return completer.future;
//   }

