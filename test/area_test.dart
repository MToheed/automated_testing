import 'package:test/test.dart';
import 'package:unit_testing/area.dart';

void main() {
  late Area area;
  setUp(() {
    area = Area();
  });
  group(
    "Area of circle",
    () {
      test(
        "Area.pi should be 3.141592",
        () {
          expect(Area.pi, 3.141592);
        },
      );

      test(
        "Area of the circle with radius 1 should be 3.141592",
        () {
          final result = area.circle(1);

          expect(result, 3.141592);
        },
      );

      test(
        "Area of the circle with radius 10 should be 314.1592",
        () {
          final result = area.circle(10);

          expect(result, 314.1592);
        },
      );
    },
  );
}
