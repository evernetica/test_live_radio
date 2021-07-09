import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformPage extends Page {
  final Widget child;
  final String path;
  final String? title;

  PlatformPage(this.child, this.path, {this.title});

  @override
  Route createRoute(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(
          builder: (_) => child, settings: this, title: title);
    } else {
      return MaterialPageRoute(builder: (_) => child, settings: this);
    }
  }
}
