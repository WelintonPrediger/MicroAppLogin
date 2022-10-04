import 'package:login_app/app/module/login/_export.dart';
import 'package:micro_app_dependencies/main.dart';
import 'package:flutter/material.dart';

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
        title: const Text('Micro App Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Buscou o Micro App Login'),
            const Text('Teste de Observer com Micro App'),
            Observer(builder: (context) => Text('${store.value}'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Modular.to.pushNamed('/home'),
        child: const Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}