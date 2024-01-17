import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            context.router.pop();
          },
          child: const Text(
            'PreviusPage',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
