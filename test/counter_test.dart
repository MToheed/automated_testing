import 'package:test/test.dart';
import 'package:unit_testing/unit_testing/counter.dart';

void main() {
  test(
    "the counter should increment",
    () {
      final counter = Counter();
      counter.increment();

      expect(counter.count, 1);
    },
  );
}
