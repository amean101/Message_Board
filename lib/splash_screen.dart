import 'package:flutter/material.dart';
import 'login_page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => LoginPage()),
      );
    });
    return Scaffold(
      body: Center(child: Text('Welcome to Message Board App')),
    );
  }
}