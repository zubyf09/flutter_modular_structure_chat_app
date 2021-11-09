// import 'package:core/core.dart';
// import 'package:network/network.dart';
// import 'package:network/repositories/interface/conversation_repository.dart';
// import 'package:network/utils/api_constants.dart';
// import '../network_provider.dart';
//
// class SearchRepositoryImp {
//   SearchRepository searchProductsRepository;
//
//   SearchRepositoryImp() {
//     searchProductsRepository = new SearchRepository(
//         NetworkProvider.instance(contentType: 'application/json'));
//   }
//
//   Future<SearchResposne> getSearchList(String keyWord) async {
//     var response;
//     try {
//       response = await searchProductsRepository.getSearchList( ApiConstant.apiKey,
//           ApiConstant.albumSearch, keyWord, ApiConstant.format);
//       return SearchResposne.fromJson(response.data);
//     } catch (e) {
//       return null;
//
//     }
//   }
// }
