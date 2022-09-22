import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/widget_testing/todo_list_view.dart';

void main() {
  testWidgets(
    "Add or remove text",
    (tester) async {
      await tester.pumpWidget(const TodoListView());
      
      await tester.enterText(find.byType(TextField), "hi");

      await tester.tap(find.byType(FloatingActionButton));

      await tester.pump();

      expect(find.text("hi"), findsOneWidget);

      await tester.drag(find.byType(Dismissible), const Offset(500.0, 0.0));

      await tester.pumpAndSettle();

      expect(find.text('hi'), findsNothing);
    },
  );
}
