import 'dart:async';

import 'package:appia/dominio/entities/predict.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../dominio/entities/post.dart';

import '../../dominio/usecases/ai_usecase.dart';
import '../../dominio/usecases/get_posts.dart';

part 'event.dart';
part 'states.dart';

// class PostsBloc extends Bloc<PostsEvent, PostsState> {
//   final GetPostsUsecase getPostsUsecase;

//   PostsBloc({required this.getPostsUsecase}) : super(Loading()) {
//     on<PostsEvent>((event, emit) async {
//       if (event is GetPosts) {
//         try {
//           List<Post> response = await getPostsUsecase.execute();
//           emit(Loaded(posts: response));
//         } catch (e) {
//           emit(Error(error: e.toString()));
//         }
//       }
//     });
//   }
// }

class Sendprediction extends Bloc<PredictEvent, PrecState> {
  final PredictUseCase predictUseCase;

  Sendprediction({required this.predictUseCase}) : super(Send()) {
    on<PredictEvent>((event, emit) async {
      if (event is Prediction) {
        try {
          emit(Sending());
          await predictUseCase.execute(event.predict);
          emit(Sended());
        } catch (e) {
          emit(Err(err: e.toString()));
        }
      }
    });
  }
}
