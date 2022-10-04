import 'package:login_app/app/module/login/_export.dart';
import 'package:micro_app_common/components/_export_components.dart';
import 'package:micro_app_dependencies/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}
class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Micro App Login'),
        actions: [
          Observer(builder: (context) => Text('${store.value}'))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login', style: TextStyle(fontSize: 28)),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ComponentTextFormField(
                icon: Icons.person,
                controller: usernameController,
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ComponentTextFormField(
                icon: Icons.lock,
                controller: passwordController,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(onPressed: () => Modular.to.pushNamed('/home'), child: const Text('Entrar'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => store.increment(),
        child: const Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}