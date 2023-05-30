part of 'bloc.dart';

// @immutable
// abstract class PostsState {}

// class Loading extends PostsState {}

// class Loaded extends PostsState {
//   final List<Post> posts;

//   Loaded({required this.posts});
// }

// class Error extends PostsState {
//   final String error;

//   Error({required this.error});
// }

@immutable
abstract class PrecState {}

class Send extends PrecState {}

class Err extends PrecState {
  final String err;

  Err({required this.err});
}

class Sending extends PrecState {}

class Sended extends PrecState {}
