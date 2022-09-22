import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/widget_testing/title_message_view.dart';

void main() {
  testWidgets("TitleMessageWidget has a title and message", (tester) async {
    await tester.pumpWidget(
        const TitleMessageView(title: "Flutter", message: "Android & iOS"));

    final oneFinder = find.text("Flutter");
    final twoFinder = find.text("Android & iOS");

    expect(oneFinder, findsOneWidget);
    expect(twoFinder, findsOneWidget);
  });
}
