import 'package:flutter/material.dart';
import 'package:sosapp/addcontact.dart';
import 'package:sosapp/signIn.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SOS',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SignIn(),
      },
    );
  }
}
