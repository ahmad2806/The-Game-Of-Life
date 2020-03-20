import 'package:flutter/material.dart';
import 'package:the_game/screens/chore_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChorePage(),
    );
  }
}
