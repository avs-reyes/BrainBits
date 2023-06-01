import 'dart:async';

import 'package:appia/dominio/entities/predict.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../dominio/usecases/ai_usecase.dart';

part 'event.dart';
part 'states.dart';

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
