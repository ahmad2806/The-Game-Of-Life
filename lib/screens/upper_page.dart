import 'package:flutter/material.dart';

class UpperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final _screenSize = MediaQuery.of(context).size;

    return Container(
      // constraints: BoxConstraints.expand(),
      // decoration: BoxDecoration(
      //   color: Color.fromARGB(255, 255, 255, 255),
      // ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Opacity(
              opacity: 0.45,
              child: Image.asset(
                "assets/images/upper-back-ground.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/star-icon.png",
                fit: BoxFit.none,
              ),
            ],
          ),
          // Positioned(
          //   top: 5,
          //   child: Image.asset(
          //     "assets/images/game-text.png",
          //     fit: BoxFit.none,
          //   ),
          // ),
        ],
      ),
    );
  }
}
