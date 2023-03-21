import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 105, 0, 98),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 50,
            ),
            ListTile(
              title: Image.asset(
                'assets/images/load.png',
                height: 100,
                width: 50,
              ),
            ),
            ListTile(
              title: Center(
                child: Text(
                  "beligaladilshan@gmail.com",
                  style: GoogleFonts.inter(color: Colors.white, fontSize: 15),
                ),
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
                style: GoogleFonts.inter(color: Colors.white, fontSize: 18),
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
                style: GoogleFonts.inter(color: Colors.white, fontSize: 18),
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
                style: GoogleFonts.inter(color: Colors.white, fontSize: 18),
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
                style: GoogleFonts.inter(color: Colors.white, fontSize: 18),
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
                style: GoogleFonts.inter(color: Colors.white, fontSize: 18),
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
