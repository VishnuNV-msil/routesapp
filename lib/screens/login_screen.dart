import 'package:flutter/material.dart';
import 'last_screen.dart';

class LoginScreen extends StatelessWidget {
  //const LoginScreen({super.key});
  static const routeName = '/login';
  String number1;

  LoginScreen(this.number1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('This is the login page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/last', arguments: 'better get back to home!');
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
