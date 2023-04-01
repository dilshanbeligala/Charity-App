import 'package:charity_app/screens/notification.dart';
import 'package:charity_app/screens/settings/account_settings/change_password.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'settings/app_settings/app_settings.dart';
import 'settings/contact_us/contact_us.dart';
import 'settings/help/help.dart';

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
            SizedBox(
              height: screenHeight * 0.08,
            ),
            ListTile(
              title: Image.asset(
                'assets/images/load.png',
                height: screenHeight * 0.15,
                //width: screenWidth*0.05,
              ),
            ),
            ListTile(
              title: Center(
                child: Text(
                  "beligaladilshan@gmail.com",
                  style: GoogleFonts.inter(
                      color: Colors.white, fontSize: screenWidth * 0.015 + 10),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.white,
                size: screenWidth * 0.08,
              ),
              title: Text(
                'Notifications',
                style: GoogleFonts.inter(
                    color: Colors.white, fontSize: screenWidth * 0.015 + 10),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => Notification_page()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_box,
                color: Colors.white,
                size: screenWidth * 0.08,
              ),
              title: Text(
                'Account Settings',
                style: GoogleFonts.inter(
                    color: Colors.white, fontSize: screenWidth * 0.015 + 10),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) =>ChangePasswordPage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.white,
                size: screenWidth * 0.08,
              ),
              title: Text(
                'Help',
                style: GoogleFonts.inter(
                    color: Colors.white, fontSize: screenWidth * 0.015 + 10),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) =>Help()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
                size: screenWidth * 0.08,
              ),
              title: Text(
                'App Settings',
                style: GoogleFonts.inter(
                    color: Colors.white, fontSize: screenWidth * 0.015 + 10),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AppSettings()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.contact_phone,
                color: Colors.white,
                size: screenWidth * 0.08,
              ),
              title: Text(
                'Contact Us',
                style: GoogleFonts.inter(
                    color: Colors.white, fontSize: screenWidth * 0.015 + 10),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  ContactUs()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
