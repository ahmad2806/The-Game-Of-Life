import 'package:flutter/material.dart';
import '../models/instruction.dart';
import '../widgets/instruction_item.dart';
import '../widgets/utils/header.dart';

class InstructionScreen extends StatelessWidget {
  final List<Instruction> _instructions;

  InstructionScreen(this._instructions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header.getCleanHeader(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 7.0,
            ),
            child: Row(
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage((_instructions.length != 0 ? _instructions[0].sender.pic: null)),
                  ),
                ),
                Text(
                  (_instructions.length != 0? _instructions[0].sender.name: ""),
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _instructions.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return InstructionItem(_instructions[index]);
                }),
          ),
        ],
      ),
    );
  }
}
