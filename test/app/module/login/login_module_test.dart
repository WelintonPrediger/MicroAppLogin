import 'package:micro_app_login/app/module/login/_export.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
 
void main() {

  setUpAll(() {
    initModule(LoginModule());
  });
}