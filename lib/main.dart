import 'package:flutter/material.dart';
import 'package:startup_namer/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(), theme: ThemeData(primarySwatch: Colors.purple));
  }
}
