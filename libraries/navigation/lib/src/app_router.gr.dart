// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:home/home.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    ConversationsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ConversationsPage());
    },
    ConversationDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ConversationDetailsRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.ConversationDetailsPage(key: args.key, data: args.data));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(ConversationsRoute.name, path: '/'),
        _i2.RouteConfig(ConversationDetailsRoute.name,
            path: '/conversation-details-page')
      ];
}

/// generated route for [_i1.ConversationsPage]
class ConversationsRoute extends _i2.PageRouteInfo<void> {
  const ConversationsRoute() : super(name, path: '/');

  static const String name = 'ConversationsRoute';
}

/// generated route for [_i1.ConversationDetailsPage]
class ConversationDetailsRoute
    extends _i2.PageRouteInfo<ConversationDetailsRouteArgs> {
  ConversationDetailsRoute({_i3.Key? key, required dynamic data})
      : super(name,
            path: '/conversation-details-page',
            args: ConversationDetailsRouteArgs(key: key, data: data));

  static const String name = 'ConversationDetailsRoute';
}

class ConversationDetailsRouteArgs {
  const ConversationDetailsRouteArgs({this.key, required this.data});

  final _i3.Key? key;

  final dynamic data;
}
