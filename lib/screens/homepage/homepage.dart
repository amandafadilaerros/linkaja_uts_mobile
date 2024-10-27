import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              color: Color(0xFFEE1B24),
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/icons/logo.png', width: 50),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, color: Colors.white),
                          SizedBox(width: 10),
                          Icon(Icons.chat_bubble_outline, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hi, AMANDA FADILA ERROS',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      balanceCard('Your Balance', 'Rp 2.816'),
                      balanceCard('Bonus Balance', '0'),
                    ],
                  ),
                ],
              ),
            ),

            // Menu Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  menuButton('TopUp', 'assets/icons/topup.png'),
                  menuButton('CashOut', 'assets/icons/cashout.png'),
                  menuButton('Send Money', 'assets/icons/sendmoney.png'),
                  menuButton('See All', Icons.more_horiz),
                ],
              ),
            ),

            // Services Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Services',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 20,
                    runSpacing: 10,
                    children: [
                      serviceIcon('Pulsa/Data', 'assets/icons/pulsadata.png'),
                      serviceIcon(
                          'Electricity', 'assets/icons/electricity.png'),
                      serviceIcon('Telkomsel', 'assets/icons/hemat.png'),
                      serviceIcon('E-Money', 'assets/icons/kartu.png'),
                      serviceIcon('Mosque', 'assets/icons/mosque.png'),
                      serviceIcon('Church', 'assets/icons/church.png'),
                      serviceIcon('Infaq', 'assets/icons/infaq.png'),
                      serviceIcon('More', Icons.more_horiz),
                    ],
                  ),
                ],
              ),
            ),

            // Promotional Slider
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: 150,
                child: PageView(
                  children: [
                    promoBanner('assets/icons/banner1.png'),
                    promoBanner('assets/icons/banner2.png'),
                    promoBanner('assets/icons/banner3.png'),
                  ],
                ),
              ),
            ),

            // Best Deals Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Deals',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('See All'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget balanceCard(String title, String balance) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 14, color: Colors.black)),
          SizedBox(height: 5),
          Text(balance,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget menuButton(String label, dynamic icon) {
    return Column(
      children: [
        icon is IconData
            ? Icon(icon, size: 30, color: Colors.red)
            : Image.asset(icon, width: 30),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget serviceIcon(String label, dynamic icon) {
    return Column(
      children: [
        icon is IconData
            ? Icon(icon, size: 40, color: Colors.red)
            : Image.asset(icon, width: 40),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget promoBanner(String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
