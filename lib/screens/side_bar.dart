import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 105, 0, 98),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Chamika Dilshan',
                style: GoogleFonts.inter(),
              ),
              accountEmail:
                  Text('beligaladilshan@gmail.com', style: GoogleFonts.inter()),
              currentAccountPicture: CircleAvatar(
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => ProfileTraveler(),
                    //     ));
                  },
                  child: ClipOval(
                      // child: Image.asset(
                      //   // 'assets/images/homepage_new/bella.jpg',
                      //   // fit: BoxFit.cover,
                      //   // width: 90,
                      //   // height: 150,
                      // ),
                      ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 67, 1, 63),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Notifications',
                style: GoogleFonts.inter(color: Colors.white, fontSize: screenWidth*0.015+10,),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(
                Icons.account_box,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Account Settings',
                style: GoogleFonts.inter(color: Colors.white,fontSize: screenWidth*0.015+10, ),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Help',
                style: GoogleFonts.inter(color: Colors.white, fontSize: screenWidth*0.015+10,),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'App Settings',
                style: GoogleFonts.inter(color: Colors.white, fontSize: screenWidth*0.015+10,),
              ),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const Settings()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.contact_phone,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Contact Us',
                style: GoogleFonts.inter(color: Colors.white, fontSize: screenWidth*0.015+10,),
              ),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ContactUsPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
