import 'package:flutter/material.dart';
import 'package:listandtable/contact_page.dart';
import 'package:listandtable/dashboard.dart';
import 'package:listandtable/layout/home.dart';
import 'package:listandtable/login_screen.dart';
import 'package:listandtable/register_screen.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Auth App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
       _createDrawerItem(
  icon: Icons.home,
  text: 'Home',
   onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()), // Navigate to Home
    );
  },
),
_createDrawerItem(
  icon: Icons.info_outline, // Changed to a more suitable icon
  text: 'About',
  onTap: () {
    // Add your navigation logic here
  },
),
_createDrawerItem(
  icon: Icons.contact_phone, // Changed to a more suitable icon
  text: 'Contact',
 onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ContactPage()), // Navigate to Home
    );
  },
),
_createDrawerItem(
  icon: Icons.feedback, // Changed to a more suitable icon
  text: 'Feedback',
  onTap: () {
    // Add your navigation logic here
  },
),
_createDrawerItem(
  icon: Icons.login, // Changed to a more suitable icon
  text: 'Login Page',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()), // Navigate to Home
    );
  },
),
_createDrawerItem(
  icon: Icons.app_registration, // Changed to a more suitable icon
  text: 'Register',
 onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterScreen()), // Navigate to Home
    );
  },
),
_createDrawerItem(
  icon: Icons.dashboard, // Changed to a more suitable icon
  text: 'Main Screen',
 onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DashboardScreen()), // Navigate to Home
    );
  },
),

        ],
      ),
    );
  }

  Widget _createDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }
}
