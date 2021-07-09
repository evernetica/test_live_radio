import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_live_radio/app/common/platform_scaffold.dart';

class AppScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live Radio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text("Live Radio"),
          ),
          body: Center(child: Text("AppScene"))),
    );
  }
}