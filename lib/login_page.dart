import 'package:flutter/material.dart';
import 'register_page.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: emailController, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: 'Password'), obscureText: true),
            ElevatedButton(
              onPressed: () {
                // Firebase login logic
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => RegisterPage()));
              },
              child: Text('Register'),
            )
          ],
        ),
      ),
    );
  }
}