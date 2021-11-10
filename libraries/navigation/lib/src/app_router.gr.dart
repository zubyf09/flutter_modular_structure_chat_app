// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:core/core.dart' as _i5;
import 'package:flutter/material.dart' as _i4;
import 'package:home/home.dart' as _i1;
import 'package:home/src/ui/conversation_details_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ConversationsRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ConversationsPage());
    },
    ConversationDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ConversationDetailsRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ConversationDetailsPage(
              key: args.key, conversationInfo: args.conversationInfo));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(ConversationsRoute.name, path: '/'),
        _i3.RouteConfig(ConversationDetailsRoute.name,
            path: '/conversation-details-page')
      ];
}

/// generated route for [_i1.ConversationsPage]
class ConversationsRoute extends _i3.PageRouteInfo<void> {
  const ConversationsRoute() : super(name, path: '/');

  static const String name = 'ConversationsRoute';
}

/// generated route for [_i2.ConversationDetailsPage]
class ConversationDetailsRoute
    extends _i3.PageRouteInfo<ConversationDetailsRouteArgs> {
  ConversationDetailsRoute(
      {_i4.Key? key, required _i5.ConversationInfo conversationInfo})
      : super(name,
            path: '/conversation-details-page',
            args: ConversationDetailsRouteArgs(
                key: key, conversationInfo: conversationInfo));

  static const String name = 'ConversationDetailsRoute';
}

class ConversationDetailsRouteArgs {
  const ConversationDetailsRouteArgs(
      {this.key, required this.conversationInfo});

  final _i4.Key? key;

  final _i5.ConversationInfo conversationInfo;
}
