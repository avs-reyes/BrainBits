import 'package:appia/dominio/entities/predict.dart';

abstract class PredictRepository {
  Future<void> predict(Predict predict);
}
