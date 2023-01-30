import 'package:flutter/material.dart';
import 'screens/about_screen.dart';
import 'screens/login_screen.dart';
import 'screens/setting_screen.dart';
import 'screens/last_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // Named route
        '/': (context) => HomePage(),
        '/about': (context) => AboutScreen(),
        // Anonymous route
        '/settings': (context) => SettingsScreen('you'),
        // PushReplacement route
        '/login': (context) => LoginScreen('hi'),
        '/last': (context) => LastScreen()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => HomePage());
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Welcome to the home page'),
            ElevatedButton(
              child: Text('Go to About'),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ElevatedButton(
              child: Text('Go to Settings'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen('Welcome to Settings'),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Logout'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginScreen('hello User'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
