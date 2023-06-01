import 'data/datasources/ai_remote_datasource.dart';
import 'data/repositories/ai_repository_impl.dart';
import 'dominio/usecases/ai_usecase.dart';

class UsecaseConfig {
  PredictUseCase? predictUseCase;
  PredictRepositoryImpl? predictRepositoryImpl;
  PredictRemoteDataSourceImpl? predictRemoteDataSourceImpl;

  UsecaseConfig() {
    predictRemoteDataSourceImpl = PredictRemoteDataSourceImpl();
    predictRepositoryImpl = PredictRepositoryImpl(
        predictRemoteDataSource: predictRemoteDataSourceImpl!);
    predictUseCase = PredictUseCase(predictRepositoryImpl!);
  }
}
