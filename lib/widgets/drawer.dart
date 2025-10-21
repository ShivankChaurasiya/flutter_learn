import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imagePath = "assets/images/erp_pic.png";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header Section
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text(
                  'Shivank Chaurasiya',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: const Text('shivankchaurasiya9@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      width: 90,
                      height: 90,
                    ),
                  ),
                ),
                decoration: const BoxDecoration(color: Colors.deepPurple),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home_outlined, color: Colors.white),
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
                
              },
            ),

            ListTile(
              leading: const Icon(Icons.person_outline, color: Colors.white),
              title: const Text(
                'Profile',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.email_outlined, color: Colors.white),
              title: const Text(
                'Email Me',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings_outlined, color: Colors.white),
              title: const Text(
                'Settings',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
                // Add navigation to settings page
              },
            ),
          ],
        ),
      ),
    );
  }
}
