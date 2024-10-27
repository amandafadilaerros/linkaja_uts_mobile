import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final Function onTap;

  const MenuItem(
      {required this.title, required this.iconPath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath, width: 40, height: 40),
          SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}
