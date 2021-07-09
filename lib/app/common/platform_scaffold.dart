import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformScaffold extends StatelessWidget {
  final Widget child;
  final CupertinoNavigationBar? cupertinoNavigationBar;
  final AppBar? materialAppBar;

  const PlatformScaffold(
      {Key? key, this.cupertinoNavigationBar, this.materialAppBar, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Material(
        child: SafeArea(
          child: CupertinoPageScaffold(
            child: child,
            navigationBar: cupertinoNavigationBar,
          ),
        ),
      );
    } else {
      return SafeArea(
          child: Scaffold(
        appBar: materialAppBar,
        body: child,
      ));
    }
  }
}
