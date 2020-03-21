import 'package:flutter/material.dart';

// Models
import '../models/instruction.dart';

// Utils
import '../widgets/utils/header.dart';

// Main Screens
import './instruction_screen.dart';
import './account_screen.dart';
import './account_settings_screen.dart';

class HomeScreen extends StatefulWidget {
  final Function _startCheckYourChores;
  HomeScreen(this._startCheckYourChores);

  @override
  _HomeState createState() => _HomeState(_startCheckYourChores);
}

class _HomeState extends State<HomeScreen> {

  final Function _startCheckYourChores;

  _HomeState(this._startCheckYourChores);

  // Properties & Variables needed
  int currentTab = 0;
  final List<Widget> screens = [
    InstructionScreen(Instruction.getSample()),
    AccountSettingsScreen(),
    AccountScreen(),
  ];

  // Active Page
  Widget currentScreen = InstructionScreen(Instruction.getSample());

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.star,
          size: 40,
        ),
        backgroundColor: Colors.orangeAccent,
        onPressed: () => _startCheckYourChores(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            InstructionScreen(Instruction.getSample()); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.message,
                          color: currentTab == 0 ? Colors.blue : Colors.white,
                          size: 30,
                        ),
                        Text(
                          'Instructions',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.blue : Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            AccountScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_box,
                          color: currentTab == 2 ? Colors.blue : Colors.white,
                          size: 30,
                        ),
                        Text(
                          'Account',
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.blue : Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
