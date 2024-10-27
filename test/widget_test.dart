import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:linkaja/screens/homepage/homepage.dart';

void main() {
  testWidgets('Homepage displays menu items', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    // Verify that the homepage is displayed.
    expect(find.text('Homepage'), findsOneWidget);

    // Verify that the menu items are displayed.
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('History'), findsOneWidget);
    expect(find.text('Account'), findsOneWidget);
  });
}
