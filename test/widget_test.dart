// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:koruwel/pages/home/home.dart';
import 'package:koruwel/tabs/tab_home.dart';

void main() {
  testWidgets('Search text field', (WidgetTester tester) async {
    final textField = find.byKey(const Key('textformfield'));

    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: Home()));

    // // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.enterText(textField, "Widget Testing");
    // await tester.tap(textField);
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text("Widget Testings"), findsNothing);
    expect(find.text("Widget Testing"), findsOneWidget);
  });
}
