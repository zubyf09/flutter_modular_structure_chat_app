// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'search_repository.dart';
//
// // **************************************************************************
// // RetrofitGenerator
// // **************************************************************************
//
// class _SearchRepository implements SearchRepository {
//   _SearchRepository(this._dio, {this.baseUrl}) {
//     baseUrl ??= 'http://ws.audioscrobbler.com/2.0';
//   }
//
//   final Dio _dio;
//
//   String baseUrl;
//
//   @override
//   Future<Response<dynamic>> getSearchList(
//       api_key, method, album, format) async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{
//       r'api_key': api_key,
//       r'method': method,
//       r'album': album,
//       r'format': format
//     };
//     final _data = <String, dynamic>{};
//     final _result = await _dio.fetch<Map<String, dynamic>>(
//         _setStreamType<Response<dynamic>>(
//             Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
//                 .compose(_dio.options, '',
//                 queryParameters: queryParameters, data: _data)
//                 .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     // final value = Response<dynamic>.fromJson(_result.data!);
//     return _result;
//   }
//
//   RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
//     if (T != dynamic &&
//         !(requestOptions.responseType == ResponseType.bytes ||
//             requestOptions.responseType == ResponseType.stream)) {
//       if (T == String) {
//         requestOptions.responseType = ResponseType.plain;
//       } else {
//         requestOptions.responseType = ResponseType.json;
//       }
//     }
//     return requestOptions;
//   }
// }
