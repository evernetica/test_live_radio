import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_live_radio/app/app/app_cubit.dart';
import 'package:test_live_radio/app/fail/screen_fail.dart';
import 'package:test_live_radio/app/main/screen_main.dart';
import 'package:test_live_radio/app/splash/screen_splash.dart';

class GlobalRouterDelegate extends RouterDelegate<AppState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppState> {
  final GlobalKey<NavigatorState> navigatorKey;

  AppState _currentState = AppState.load();

  GlobalRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  AppState get currentConfiguration => _currentState;

  List<Page<dynamic>> _getPages() {
    List<Page<dynamic>> pages = [SplashPage()]; //default

    _currentState.when(load: () {
      pages = [SplashPage()];
    }, loggedIn: () {
      pages = [MainPage()];
    }, loggedOut: () {
      pages = [FailPage()];
    });

    return pages;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: BlocProvider.of<AppCubit>(context),
      listener: (BuildContext context, AppState state) {
        _currentState = state;
        notifyListeners();
      },
      child: Navigator(
        pages: _getPages(),
        onPopPage: (route, result) {
          return false;
        },
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(AppState configuration) async {
    _currentState = configuration;
    notifyListeners();
  }
}
