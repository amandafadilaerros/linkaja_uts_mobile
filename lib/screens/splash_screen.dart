// lib/screens/splash_screen.dart
import 'package:flutter/material.dart';
import '../main.dart'; // Pastikan impor ke halaman utama Anda

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Menunggu 5 detik sebelum pindah ke halaman utama
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/splash.png',
              width: 250,
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
