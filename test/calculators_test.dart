import 'package:productCleanArchitecture/calculators.dart';
import 'package:test/test.dart';

void main() {
  late Calculators cal;
  setUpAll(() {
    cal = Calculators();
  });
  group("add function", () {
    test("add test1", () {
      final result = cal.add(1, 2);
      expect(result, 3);
    });
    test("add test2", () {
      final result = cal.add(2, 2);
      expect(result, 4);
    });
  });
  group("sub function", () {
    test("sub test1", () {
      final result = cal.sub(5, 2);
      expect(result, 3);
    });
    test("sub test2", () {
      final result = cal.sub(5, 2);
      expect(result, 3);
    });
  });
  group("div function", () {
    test("div test1", () {
      final result = cal.div(6, 2);
      expect(result, 3);
    });
    test("div test2", () {
      final result = cal.div(6, 2);
      expect(result, 3);
    });
  });
}
