import 'package:flutter/widgets.dart';
import 'package:test_live_radio/app/app/app_cubit.dart';

class NavigatorInformationParser
    extends RouteInformationParser<AppState> {
  @override
  Future<AppState> parseRouteInformation(
      RouteInformation routeInformation) async {
    return AppState.load();
  }

  @override
  RouteInformation restoreRouteInformation(AppState path) {
    return RouteInformation(location: "/");
  }
}