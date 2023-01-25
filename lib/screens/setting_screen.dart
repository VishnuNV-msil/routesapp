import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  //const SettingsScreen({super.key});
  String log;

  SettingsScreen(this.log);
  static const routeName = '/settings';
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text(log,),
      ),
    );
  }
}