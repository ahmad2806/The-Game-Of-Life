import 'package:flutter/material.dart';
import 'package:the_game/models/account.dart';

class ProfilePage extends StatelessWidget {
  final user = Account(
      "أحمد أبراهيم",
      "assets/images/profile-image.png",
      "الحياة عبارة عن لعبة... اما ان تستغلها وتلعبها بشكل صحيح او اما حط راسك وناام وضلك احكي اليوم بكرا ",
      "جرافيك ديزاين");

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;

    return Container(
      width: _screenSize.width / 1.5,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              user.pic,
            ),
          ),
          Positioned(
            top: _screenSize.height / 6,
            child: Text(
              user.name,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color.fromARGB(255, 41, 41, 41),
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
            top: _screenSize.height / 5,
            child: Text(
              user.job,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color.fromARGB(255, 41, 41, 41),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: _screenSize.height / 5),
            child: Text(
              user.bio,
              maxLines: 2,
              textWidthBasis: TextWidthBasis.longestLine,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
