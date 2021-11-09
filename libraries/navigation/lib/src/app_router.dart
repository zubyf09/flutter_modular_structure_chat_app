
import 'package:auto_route/annotations.dart';
import 'package:home/home.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: ConversationsPage, initial: true),
    AutoRoute(page: ConversationDetailsPage),

  ],
)
class $AppRouter {}