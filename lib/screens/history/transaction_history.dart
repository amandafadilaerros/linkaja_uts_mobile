import 'package:flutter/material.dart';

class TransactionHistoryPage extends StatefulWidget {
  @override
  _TransactionHistoryState createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Transaction History', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Color(0xFFEE1B24),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(text: 'Pending'),
            Tab(text: 'Done'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text('No pending transactions')),
          ListView(
            padding: EdgeInsets.all(16),
            children: [
              transactionCard(
                title: 'E-statement Service Fee',
                date: '24 Oct 2024, 06:14 WIB',
                description: 'E-Statement 6289680271942',
                amount: 'Rp2.000',
                status: 'Success',
              ),
              transactionCard(
                title: 'Refund',
                date: '24 Oct 2024, 06:14 WIB',
                description: 'Biaya Layanan E-statement 6289680271942',
                amount: 'Rp2.000',
                status: 'Success',
              ),
              transactionCard(
                title: 'Buy Phone Credit',
                date: '8 Aug 2024, 14:56 WIB',
                description: 'Three Prepaid 6289680271942',
                amount: 'Rp6.000',
                status: 'Success',
              ),
              transactionCard(
                title: 'Buy Phone Credit',
                date: '8 Aug 2024, 13:31 WIB',
                description: 'Telkomsel Prepaid 6281332158881',
                amount: 'Rp7.000',
                status: 'Success',
              ),
              transactionCard(
                title: 'Top Up from Bank',
                date: '8 Aug 2024, 13:31 WIB',
                description: 'Top Up from BANK BRI 172309868424...',
                amount: 'Rp10.000',
                status: 'Success',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget transactionCard({
    required String title,
    required String date,
    required String description,
    required String amount,
    required String status,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(amount, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 5),
          Text(date, style: TextStyle(color: Colors.grey, fontSize: 12)),
          SizedBox(height: 5),
          Text(description, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(status, style: TextStyle(color: Colors.green)),
              Icon(Icons.check_circle, color: Colors.green, size: 20),
            ],
          ),
        ],
      ),
    );
  }
}
