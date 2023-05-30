// import 'dart:convert' as convert;
// //import 'package:clean_architecture_bloc/features/posts/domain/entities/post.dart';
// import 'package:http/http.dart' as http;

// import '../models/model.dart';

// abstract class PostRemoteDataSource {
//   // https://jsonplaceholder.typicode.com/posts
//   Future<List<PostModel>> getPosts();
// }

// class PostRemoteDataSourceImp implements PostRemoteDataSource {
//   @override
//   Future<List<PostModel>> getPosts() async {
//     //print('DataSource');
//     var url = Uri.https('jsonplaceholder.typicode.com', '/posts');
//     var response = await http.get(url);

//     if (response.statusCode == 200) {
//       return convert
//           .jsonDecode(response.body)
//           .map<PostModel>((data) => PostModel.fromJson(data))
//           .toList();
//     } else {
//       throw Exception();
//     }
//   }
// }
