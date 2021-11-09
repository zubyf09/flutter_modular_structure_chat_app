// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ConversationRepository implements ConversationRepository {
  _ConversationRepository(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://filebin.net/dmyfd8ud99h6z9wy';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ConversationsResponse> getConversations() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<ConversationsResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/inbox.json',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ConversationsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ConversationDetailsResponse> getConversationDetail(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<ConversationDetailsResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id.json',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ConversationDetailsResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
