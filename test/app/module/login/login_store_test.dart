import 'package:flutter_test/flutter_test.dart';
import 'package:micro_app_login/app/module/login/_export.dart';
 
void main() {
  late LoginStore store;

  setUpAll(() {
    store = LoginStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}