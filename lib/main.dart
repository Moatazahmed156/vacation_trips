import 'package:flutter/material.dart';
import 'Screens/Start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vacation Trips',
      home: Start(),
    );
  }
}
