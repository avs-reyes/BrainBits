// import 'package:appia/presentacion/blocs/bloc.dart';
// import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';

// class PostsPage extends StatefulWidget {
//   const PostsPage({super.key});

//   @override
//   State<PostsPage> createState() => _PostsPageState();
// }

// class _PostsPageState extends State<PostsPage> {
//   @override
//   void initState() {
//     super.initState();
//     context.read<PostsBloc>().add(GetPosts());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Posts'),
//       ),
//       body: BlocBuilder<PostsBloc, PostsState>(builder: (context, state) {
//         if (state is Loading) {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         } else if (state is Loaded) {
//           return SingleChildScrollView(
//             child: Column(
//                 children: state.posts.map((post) {
//               return Container(
//                 margin: EdgeInsets.all(5),
//                 padding: EdgeInsets.all(5),
//                 color: Colors.black12,
//                 child: ListTile(
//                   leading: Text(post.id.toString()),
//                   title: Text(post.title),
//                   subtitle: Text(post.body),
//                 ),
//               );
//             }).toList()),
//           );
//         } else if (state is Error) {
//           return Center(
//             child: Text(state.error, style: const TextStyle(color: Colors.red)),
//           );
//         } else {
//           return Container();
//         }
//       }),
//     );
//   }
// }
