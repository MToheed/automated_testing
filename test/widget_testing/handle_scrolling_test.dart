import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/widget_testing/handle_scrolling_view.dart';

void main() {
  testWidgets(
    "String list test",
    (tester) async {
      await tester.pumpWidget(HandleScrollingView(
          items: List.generate(1000, (index) => "Item $index")));

      final listFinder = find.byType(Scrollable);
      final itemFinder = find.byKey(const ValueKey("Item_240"));

      await tester.scrollUntilVisible(itemFinder, 500.0, scrollable: listFinder);
      
      expect(itemFinder, findsOneWidget);
    },
  );
}
