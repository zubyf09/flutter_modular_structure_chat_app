
import 'package:auto_route/annotations.dart';
import 'package:home/home.dart';
import 'package:home/src/ui/conversation_details_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: ConversationsPage, initial: true),
    AutoRoute(page: ConversationDetailsPage),

  ],
)
class $AppRouter {}