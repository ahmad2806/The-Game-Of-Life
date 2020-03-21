import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends AppBar {
  static final logoImage = new Image.asset('assets/images/logo.png');

  static Widget getProfileHeader() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        tooltip: 'Show Snackbar',
        onPressed: () {},
      ),
      title: Container(
        alignment: Alignment.center,
        child: logoImage,
      ),
      backgroundColor: Colors.transparent,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.settings),
          tooltip: 'Show Snackbar',
          onPressed: () {},
        ),
      ],
    );
  }

  static Widget getCleanHeader() {
    return AppBar(
      title: Container(
        alignment: Alignment.center,
        child: logoImage,
      ),
      backgroundColor: Colors.transparent,
    );
  }

  static Widget getProfileSettingsHeader() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        tooltip: 'Show Snackbar',
        onPressed: () {},
      ),
      title: Container(
        alignment: Alignment.center,
        child: logoImage,
      ),
      backgroundColor: Colors.transparent,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.save),
          tooltip: 'Show Snackbar',
          onPressed: () {},
        ),
      ],
    );
  }
}