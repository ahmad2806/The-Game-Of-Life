import 'package:flutter/material.dart';
import 'package:the_game/models/instruction.dart';
import 'package:the_game/screens/chore_screen.dart';
import 'package:the_game/screens/instruction_screen.dart';
import 'package:the_game/screens/profile_page.dart';
import 'package:the_game/screens/upper_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: UpperPage(),
              ),

              //TabBarView(children: [ImageList(),])
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      
                      child: InstructionScreen(Instruction.getSample()),
                    ),
                    Container(
                      color: Color.fromRGBO(237, 237, 237, 1),
                      child: ChorePage(),
                    ),
                    Container(
                      color: Color.fromRGBO(237, 237, 237, 1),
                      child: ProfilePage(),
                    ) // class name
                  ],
                ),
              ),
              PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: TabBar(
                  labelColor: Theme.of(context).primaryColor,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.message, size: 34,),
                    ),
                    Tab(
                      icon: Icon(Icons.star, color: Colors.yellow, size: 34,),
                    ),
                    Tab(
                      icon: Icon(Icons.perm_identity, size: 34,),
                    )
                  ], // list of tabs
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
