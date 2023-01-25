import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  //const LoginScreen({super.key});
  static const routeName = '/last';

  @override
  Widget build(BuildContext context) {
    final number1 = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Last Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('This is the last page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Text('Go to home'),
            ),
            Text(number1)
          ],
        ),
      ),
    );
  }
}
