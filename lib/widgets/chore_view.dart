import 'package:flutter/material.dart';
import '../models/chore.dart';

class ChoreView extends StatefulWidget {
  final Chore chore;

  ChoreView(this.chore);

  @override
  _ChoreViewState createState() => _ChoreViewState();
}

class _ChoreViewState extends State<ChoreView> {
  final iconWidth = 71.0;
  final iconHeight = 73.0;
  bool isChecked = false;

  void _flipBackGround() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _flipBackGround();
      },
      child: Container(
        width: iconWidth,
        height: iconHeight,
        child: Image.asset(
          this.widget.chore.image,
          fit: BoxFit.none,
          color: isChecked ? this.widget.chore.backgroundColor : null,
        ),
      ),
    );
  }
}
