import 'package:charity_app/check_internet_connection.dart/check_internet_connection.dart';
import 'package:charity_app/screens/charity_category/cloths.dart';
import 'package:charity_app/screens/charity_category/education.dart';
import 'package:charity_app/screens/charity_category/foods.dart';
import 'package:charity_app/screens/charity_category/medicine.dart';
import 'package:charity_app/screens/charity_category/oters.dart';
import 'package:charity_app/screens/notification.dart';
import 'package:charity_app/screens/side_bar.dart';
import 'package:charity_app/theme/glass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      'https://www.unicef.org/srilanka/sites/unicef.org.srilanka/files/styles/hero_desktop/public/2018-06/Earl%20Jayasuriya%20167.jpg?itok=RusO09oV',
      'https://th-i.thgim.com/public/news/national/tiwt69/article65997886.ece/alternates/FREE_1200/sri%20lanka.jpg',
      'https://www.wfpusa.org/wp-content/uploads/2022/08/WF1583841_5K3A0370.jpg',
      'https://www.unicef.org/srilanka/sites/unicef.org.srilanka/files/styles/hero_desktop/public/tips%20for%20parenting.jpg?itok=ovedmfDa',
      'https://www.habitatsrilanka.org/wp-content/uploads/2020/04/the-housing-need.jpg',
      'https://www.unicef.org/srilanka/sites/unicef.org.srilanka/files/styles/hero_desktop/public/Screenshot%202022-07-05%20at%2005.07.57.png?itok=jQf23je_'
    ];
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InternetCheckWrapper(
      child: Scaffold(
        drawer: GlassBox(child: SideBar()),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 105, 0, 98),
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(Icons.menu,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Text("අත්වැල"),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Notification_page()));
                },
                icon: Icon(Icons.notifications))
          ],
        ),
        body: ListView(children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(98, 192, 2, 210).withOpacity(.15)),
                height: screenHeight * 0.4,
                child: CarouselSlider(
                  items: imageList.map((imageUrl) {
                    return Container(child: Image.network(imageUrl));
                  }).toList(),
                  options: CarouselOptions(
                    height: screenHeight * 0.6,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 12,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.008,
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.035),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: GoogleFonts.inter(
                            fontSize: screenWidth * 0.035 + 12,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.035),
                child: SingleChildScrollView(
                  child: Container(
                    height: screenHeight * 0.4,
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Education()),
                            );
                          },
                          child: makeCategory(
                              Image: 'assets/images/edu.jpg', title: 'Education'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Foods()),
                            );
                          },
                          child: makeCategory(
                              Image: 'assets/images/food.jpg', title: 'Foods'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Clothes()),
                            );
                          },
                          child: makeCategory(
                              Image: 'assets/images/cloth.jpg', title: 'Cloths'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Medicine()),
                            );
                          },
                          child: makeCategory(
                              Image: 'assets/images/med.jpg', title: 'Medicine'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Others()),
                            );
                          },
                          child: makeCategory(
                              Image: 'assets/images/other.jpg', title: 'Others'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

Widget makeCategory({Image, title}) {
  return AspectRatio(
    aspectRatio: 2.7 / 2.5,
    child: Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(image: AssetImage(Image), fit: BoxFit.cover),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.0)
            ])),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            style: GoogleFonts.inter(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
