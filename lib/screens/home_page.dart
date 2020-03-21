import 'package:flutter/material.dart';
import 'package:the_game/screens/chore_page.dart';
import 'package:the_game/screens/upper_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
//                appBar: AppBar(
//                  title: Text(title),
//                ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
// Also Including Tab-bar height.
                child: UpperPage(),
              ),

              //TabBarView(children: [ImageList(),])
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.deepOrange,
                      child: Center(child: Text('Tab1')),
                    ),
                    Container(
                      color: Color.fromRGBO(237, 237, 237, 1),
                      child: ChorePage(),
                    ),
                    Container(
                      color: Colors.yellowAccent,
                      child: Center(child: Text('Tab3')),
                    ) // class name
                  ],
                ),
              ),
              PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: TabBar(
                  labelColor: Colors.black,
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
