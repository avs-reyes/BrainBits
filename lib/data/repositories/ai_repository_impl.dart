import '../../dominio/entities/predict.dart';
import '../../dominio/repositories/ai_repository.dart';
import '../datasources/ai_remote_datasource.dart';

class PredictRepositoryImpl implements PredictRepository {
  final PredictRemoteDataSource predictRemoteDataSource;

  PredictRepositoryImpl({required this.predictRemoteDataSource});

  @override
  Future<void> predict(Predict predict) async {
    return await predictRemoteDataSource.predict(predict);
  }
}
