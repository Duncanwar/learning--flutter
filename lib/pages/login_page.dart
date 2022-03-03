import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LoginPage"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[],
          ),
        ));
  }
}
