import 'package:appia/dominio/entities/predict.dart';
import '../repositories/ai_repository.dart';

class PredictUseCase {
  final PredictRepository predictRepository;

  PredictUseCase(this.predictRepository);

  Future<void> execute(Predict predict) async {
    return await predictRepository.predict(predict);
  }
}
