import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuScreen extends StatelessWidget {
  final String selectedMenu = 'Home'; // You can manage this with GetX later

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Drawer(
        backgroundColor: const Color(0xFF007BFF), // Blue background
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 80),

            // ✅ Highlighted Home Item
            Container(
              margin: const EdgeInsets.only(right: 60, left: 0),
              decoration: BoxDecoration(
                color: Colors.white, // White highlight
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(30),
                ),
              ),
              child: ListTile(
                leading: Icon(Icons.home_outlined, color: Color(0xFF007BFF)),
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xFF007BFF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  onTap: () {
                    Get.toNamed('/home-screen');
                  }
              ),
            ),

            // Other Menu Items
            ListTile(
              leading: Icon(Icons.person_2_outlined, color: Colors.white),
              title: Text('Profile', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined, color: Colors.white),
              title: Text('Nearby', style: TextStyle(color: Colors.white)),
            ),

            const Divider(
              color: Colors.white,
              thickness: 1,
              indent: 0,
              endIndent: 40,
            ),

            ListTile(
              leading: Icon(Icons.bookmark_border_outlined, color: Colors.white),
              title: Text('Bookmark', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.notifications_none_outlined, color: Colors.white),
              title: Text('Notification', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.messenger_outline, color: Colors.white),
              title: Text('Message', style: TextStyle(color: Colors.white)),
            ),

            const Divider(
              color: Colors.white,
              thickness: 1,
              indent: 0,
              endIndent: 40,
            ),

            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.help_outline, color: Colors.white),
              title: Text('Help', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text('Logout', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
