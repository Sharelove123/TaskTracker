// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:tasktracker/main.dart';

void main() {
  testWidgets('Task Tracker UI smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const TaskTrackerApp());

    // Verify that our app bar shows the correct title.
    expect(find.text('Task Tracker'), findsOneWidget);
    expect(find.text('No tasks yet. Add one!'), findsOneWidget);
  });
}
