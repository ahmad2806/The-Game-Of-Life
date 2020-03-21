import 'package:flutter/material.dart';
import 'package:the_game/models/chore.dart';
import '../widgets/chore_view.dart';

class ChorePage extends StatelessWidget {
  final learning = Chore(
      backgroundColor: Colors.purple, image: "assets/images/group-2689.png");
  final sleeping = Chore(
      backgroundColor: Colors.orange, image: "assets/images/group-2689.png");
  final meditation = Chore(
      backgroundColor: Colors.blue, image: "assets/images/group-2689.png");
  final sport = Chore(
      backgroundColor: Colors.green, image: "assets/images/group-2689.png");

  final List<Chore> myChors = [];
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Align(
      // alignment: Alignment.bottomCenter,
      child: Container(
        width: _screenSize.width,
        height: _screenSize.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 10,
              child: Text(
                "المهام اليومية",
                style: TextStyle(fontSize: 22, fontFamily: 'Droid Arabic Kufi', color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: _screenSize.width / 5,
              right: _screenSize.width / 5,
              child: Row(
                children: [
                  ChoreView(learning),
                  Spacer(),
                  ChoreView(sport),
                ],
              ),
            ),
            Positioned(
              bottom: _screenSize.height / 12,
              top: _screenSize.height / 12,
              child: Column(
                children: [
                  ChoreView(sleeping),
                  Spacer(),
                  ChoreView(meditation),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
