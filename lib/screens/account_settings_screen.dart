import 'package:flutter/material.dart';
import '../widgets/utils/header.dart';

class AccountSettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header.getProfileSettingsHeader(),
      body: Center(
        child: Text('Account settings screen'),
      ),
    );
  }

}