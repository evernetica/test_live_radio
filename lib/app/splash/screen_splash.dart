import 'package:flutter/material.dart';
import 'package:test_live_radio/app/common/platform_page.dart';

class SplashPage extends PlatformPage {
  SplashPage() : super(SplashWidget(), "/splash");
}

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Splash"),
        ),
      ),
    );
  }
}