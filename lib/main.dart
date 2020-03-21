import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_game/screens/chore_screen.dart';
import 'package:the_game/widgets/chore_view.dart';
import 'widgets/utils/header.dart';
import './models/instruction.dart';
import './screens/home_page.dart';

// Main Screens
import './screens/instruction_screen.dart';
import './screens/account_screen.dart';
import './screens/home_screen.dart';
import './screens/account_settings_screen.dart';

// Theme
import './theme/theme.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Check your chores panel
  void _startCheckYourChores(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: ChorePage(),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(
          primarySwatch: CustomTheme.black,
          accentColor: Colors.orangeAccent,
        ),
        home: Scaffold(
          body: HomeScreen(_startCheckYourChores),
        ));
  }
}
