import 'package:flutter/material.dart';
import 'package:milkiyat/colors.dart';

import './screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      home: HomeScreen(),
    );
  }
}
