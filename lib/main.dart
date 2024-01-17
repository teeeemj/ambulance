import 'package:flutter/material.dart';

import 'package:lesson1/core/config/routes/app_router.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().config(),
    );
  }
}
