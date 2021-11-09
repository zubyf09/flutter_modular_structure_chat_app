
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:network/utils/api_constants.dart';
import 'package:retrofit/http.dart';

part 'conversation_repository.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class ConversationRepository {
  factory ConversationRepository(Dio dio, {String baseUrl}) =_ConversationRepository;


  @GET("/inbox.json")
  Future<ConversationsResponse> getConversations();

  @GET("/{id}.json")
  Future<ConversationDetailsResponse> getConversationDetail(@Path("id") String id);


}
