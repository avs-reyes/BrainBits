part of 'bloc.dart';

@immutable
abstract class PostsEvent {}

class GetPosts extends PostsEvent {}

abstract class PredictEvent {}

class Prediction extends PredictEvent {
  final Predict predict;

  Prediction({required this.predict});
}
