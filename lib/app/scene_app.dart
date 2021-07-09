import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_live_radio/app/app/app_cubit.dart';
import 'package:test_live_radio/app/app/global_router_delegate.dart';
import 'package:test_live_radio/app/app/navigator_information_parser.dart';

class AppScene extends StatelessWidget {

  final NavigatorInformationParser informationParser =
  NavigatorInformationParser();

  final RouterDelegate<AppState> globalRouterDelegate = GlobalRouterDelegate();

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
        future: GetIt.instance.allReady(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return _appBloc(context);
          } else {
            return Container(color: Colors.white);
          }
        });
  }

  Widget _appBloc(BuildContext context) {
    var appCubit = AppCubit();

    return BlocProvider.value(
      value: appCubit,
      child: BlocBuilder(
        bloc: appCubit,
        builder: (BuildContext context, _) {
          if (Platform.isIOS) {
            return CupertinoApp.router(
              theme: CupertinoThemeData(brightness: Brightness.light),
              localizationsDelegates: [
                DefaultMaterialLocalizations.delegate,
              ],
              routeInformationParser: informationParser,
              routerDelegate: globalRouterDelegate,
              debugShowCheckedModeBanner: false,
            );
          }
          return MaterialApp.router(
            routeInformationParser: informationParser,
            routerDelegate: globalRouterDelegate,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}