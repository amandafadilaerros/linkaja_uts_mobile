import 'package:flutter/material.dart';
import 'screens/homepage/homepage.dart';
import 'screens/history/transaction_history.dart';
import 'screens/account/account_page.dart';
import 'screens/splash_screen.dart'; // Tambahkan ini

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinkAja Clone',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(), // Setel SplashScreen sebagai halaman awal
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // List of pages
  final List<Widget> _pages = [
    HomePage(),
    TransactionHistoryPage(),
    Center(child: Text('Pay Page')), // Placeholder for Pay page
    Center(child: Text('Inbox Page')), // Placeholder for Inbox page
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xFFEE1B24),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
