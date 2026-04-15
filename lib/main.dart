import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'detail_screen.dart';
import 'about_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',

      initialRoute: '/',

      routes: {
        '/': (context) => HomeScreen(),
        '/detail': (context) => DetailScreen(),
        '/about': (context) => AboutScreen(),
      },
    );
  }
}