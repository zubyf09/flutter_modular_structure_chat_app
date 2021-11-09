import 'package:core/core.dart';
import 'package:network/network.dart';
import 'package:network/repositories/interface/conversation_repository.dart';
import '../network_provider.dart';

class ConversationRepositoryImp {
  late ConversationRepository conversationRepository;

  ConversationRepositoryImp() {
    conversationRepository = new ConversationRepository(NetworkProvider.instance());
  }

  Future<ConversationsResponse?> getConversations() async {
    try {
      return await conversationRepository.getConversations();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<ConversationDetailsResponse?> getConversationDetail(String id) async {
    try {
      return await conversationRepository.getConversationDetail(id);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }



}
