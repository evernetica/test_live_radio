import 'package:flutter/material.dart';
import 'package:test_live_radio/app/common/platform_page.dart';

class FailPage extends PlatformPage {
  FailPage() : super(_FailWidget(), "/fail");
}

class _FailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Something went wrong"),
        ),
      ),
    );
  }
}