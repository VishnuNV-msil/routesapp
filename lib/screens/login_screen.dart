import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  //const LoginScreen({super.key});
  static const routeName = '/login';
  String number1;

  LoginScreen(this.number1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('This is the login page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/last', arguments: 'better get back to home!');
              },
              child: Text('Go to Last screen'),
            ),
            Text(number1)
          ],
        ),
      ),
    );
  }
}
