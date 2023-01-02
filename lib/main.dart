import 'package:flutter/material.dart';
import 'package:home_work/home_work.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      routes: {
        //   '/home': (context) => HomeScreen(),
        '/register': (context) => RegisterScreen(),
        '/forgot': (context) => ForgotScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}
