part of 'bloc.dart';

@immutable
abstract class PrecState {}

class Send extends PrecState {}

class Err extends PrecState {
  final String err;

  Err({required this.err});
}

class Sending extends PrecState {}

class Sended extends PrecState {}
