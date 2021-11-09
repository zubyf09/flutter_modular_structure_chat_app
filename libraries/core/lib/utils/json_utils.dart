import 'dart:convert';

String encodeJsonData(Map<String, dynamic> mapToEncode) {
  return jsonEncode(mapToEncode).replaceAll("/", HtmlEscape().convert("/"));
}

Map<String, dynamic> decodeJsonData(String encodedMap) {
  return jsonDecode(encodedMap.replaceAll(HtmlEscape().convert("/"), "/"));
}
