import 'package:flutter/material.dart';
import 'package:test_live_radio/app/common/platform_page.dart';

class MainPage extends PlatformPage {
  MainPage() : super(_MainWidget(), "/main");
}

class _MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Main"),
        ),
      ),
    );
  }
}