import 'package:flutter/material.dart';
import 'package:kurs_2021_app_woche2/screens/kurs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KursScreen(),
    );
  }
}
