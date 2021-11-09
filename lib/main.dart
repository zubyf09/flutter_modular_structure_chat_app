import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:home/home.dart';
import 'package:navigation/navigation.dart';
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

        BlocProvider<ConversationBloc>(
          create: (BuildContext context) => ConversationBloc(),
        ),
        BlocProvider<ConversationDetailBloc>(
          create: (BuildContext context) => ConversationDetailBloc(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationProvider: router.routeInfoProvider(),
        routeInformationParser: router.defaultRouteParser(),
        routerDelegate: router.delegate(),
      ),
    );
  }

}
