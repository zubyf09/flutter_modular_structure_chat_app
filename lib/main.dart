import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:navigation/src/app_router.gr.dart';
import 'observers/app_bloc_observer.dart';

final router = AppRouter();

Future<void> main() async {
  Bloc.observer = AppBlocObserver();
  runApp(IDTApp());
}

class IDTApp extends StatefulWidget {
  @override
  _IDTAppState createState() => _IDTAppState();
}

class _IDTAppState extends State<IDTApp> {

  @override
  Widget build(BuildContext buildContext) {
    return MultiBlocProvider(
      providers: [
      //  BlocProvider<SearchBloc>(create: (context) => SearchBloc()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: router.delegate(
          navigatorObservers: () => [
          ],
        ),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }

}
