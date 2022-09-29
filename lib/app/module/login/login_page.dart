import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:login_app/app/module/login/_export.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}
class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Micro App Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Buscou o Micro App Login'),
            Text('Teste de Observer com Micro App'),
            Observer(builder: (context) => Text('${store.value}'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => store.increment(),
      ),
    );
  }
}