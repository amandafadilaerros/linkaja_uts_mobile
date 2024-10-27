import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Account',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          // Profile Info
          Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Colors.grey[200],
                child: Text(
                  'A',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Amanda Fadila Erros',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    '+6289680271942',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          Divider(height: 32, thickness: 1),

          // Account Options
          accountOption('Account Type', 'FULL SERVICE'),
          accountOption('Account Settings', ''),
          accountOption('LinkAja Syariah', 'Not Active'),
          accountOption('Payment Method', ''),
          accountOption('Email', 'amandafadila1@gmail.com'),
          accountOption('Security Question', 'Set'),
          accountOption('PIN Settings', ''),
          accountOption('Language', 'English'),
          Divider(height: 32, thickness: 1),

          // Legal and Help
          accountOption('Terms of Service', ''),
          accountOption('Privacy Policy', ''),
          accountOption('Help Center', ''),
          Divider(height: 32, thickness: 1),

          // Logout
          Center(
            child: TextButton(
              onPressed: () {
                // Implement logout functionality here
              },
              child: Text(
                'Logout',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          SizedBox(height: 16),
          Center(
            child: Text(
              'LinkAja Version 3.7.0',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Widget accountOption(String title, String trailingText) {
    return ListTile(
      title: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailingText.isNotEmpty)
            Text(
              trailingText,
              style: TextStyle(color: Colors.grey),
            ),
          Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
      onTap: () {
        // Add navigation or functionality for each option here
      },
    );
  }
}
