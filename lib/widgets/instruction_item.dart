import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';
import '../models/instruction.dart';

class InstructionItem extends StatelessWidget {
  final Instruction _instruction;

  InstructionItem(this._instruction);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Wrap(
          children: <Widget>[
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      size: 54,
                      color: Colors.orange,
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        DateFormat('yyyy-MM-dd – kk:mm')
                            .format(_instruction.sendDate),
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "   " + _instruction.content,
                        textWidthBasis: TextWidthBasis.longestLine,
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
