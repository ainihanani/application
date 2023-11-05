import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final String status; // 'Student' or 'Teacher' status
  final String name;
  final String email;
  final VoidCallback onUpdateProfile;

  MyDrawer({
    required this.status,
    required this.name,
    required this.email,
    required this.onUpdateProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(name),
            accountEmail: Text(email),
          ),
          ListTile(
            leading: Icon(Icons.assignment_ind),
            title: Text('Status: $status'),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Update Profile'),
            onTap: onUpdateProfile, // Trigger the profile update action when clicked.
          ),
          // Add more menu items if needed.
        ],
      ),
    );
  }
}
