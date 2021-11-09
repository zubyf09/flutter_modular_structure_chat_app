// import 'package:core/model/responseModel/searches_response.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:navigation/src/app_router.dart';
// import 'package:navigation/src/application.dart';
// import 'package:search/bloc/conversation_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:widgets/loading.dart';
//
//
// class SearchPage extends StatefulWidget {
//   const SearchPage({Key? key}) : super(key: key);
//
//   @override
//   _SearchState createState() => _SearchState();
// }
//
// class _SearchState extends State<SearchPage> {
//   late SearchBloc searchBloc;
//
//   @override
//   void initState() {
//     super.initState();
//     searchBloc =  BlocProvider.of<SearchBloc>(context);
//   }
//
//   search(){
//     searchBloc.add(Search(search: searchController.text));
//   }
//
//   TextEditingController searchController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         actions: [
//           Expanded(
//             child: Container(
//                 margin: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Colors.black),
//                     borderRadius: BorderRadius.circular(5)
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.only(left: 5.0),
//                       width: 200,
//                       child: TextField(
//                         decoration: const InputDecoration(
//                           hintText: 'Search Album',
//                           border: InputBorder.none,
//                           focusedBorder: InputBorder.none,
//                           enabledBorder: InputBorder.none,
//                           errorBorder: InputBorder.none,
//                           disabledBorder: InputBorder.none,
//                         ),
//                         controller: searchController,
//                       ),
//                     ),
//                     InkWell(
//                       onTap: (){
//                         search();
//                       },
//                       child: const Icon(Icons.search,color: Colors.black,size: 30,),
//                     ),
//                   ],
//                 )
//             ),
//           ),
//
//         ],
//       ),
//       body:BlocBuilder<SearchBloc, SearchState>(
//           cubit: searchBloc,
//           builder: (context, state) {
//             return (state is SearchLoding)?const Center(child: LoadingDots(),):
//             (state is SearchLoaded)?SearchResultView(results: state.searchResponse.results):(state is SearchError)?const Center(
//               child: Text('No Data Found'),
//             ):Container();
//           }
//       ),
//     );
//   }
// }
//
//
// class SearchResultView extends StatelessWidget {
//   final Results results;
//   const SearchResultView({Key? key,required this.results}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: results.albummatches.album.length,
//         itemBuilder: (context,index){
//           return  Card(
//             elevation: 5,
//             child: ListTile(
//               leading: const Icon(Icons.album),
//               title: Text(results.albummatches.album[index].name),
//               subtitle: Text(results.albummatches.album[index].artist),
//               onTap: (){
//                 movePage(context,results.albummatches.album[index]);
//               },
//             ),
//           );
//         });
//   }
//
//   movePage(BuildContext context,Album album){
//     Application.router.navigateTo(
//       context, Routes.searchDetail,
//       routeSettings: RouteSettings(
//         arguments: album,
//       ),
//     );
//   }
// }
//
