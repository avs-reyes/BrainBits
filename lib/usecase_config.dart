import 'data/datasources/ai_remote_datasource.dart';
import 'data/remote_data.dart';
import 'data/repositories/ai_repository_impl.dart';
import 'data/repositories/repository_impl.dart';
import 'dominio/usecases/ai_usecase.dart';
import 'dominio/usecases/get_posts.dart';

class UsecaseConfig {
  // GetPostsUsecase? getPostsUsecase;
  // PostRepositoryImpl? postRepositoryImpl;
  // PostRemoteDataSourceImp? postRemoteDataSourceImp;
  PredictUseCase? predictUseCase;
  PredictRepositoryImpl? predictRepositoryImpl;
  PredictRemoteDataSourceImpl? predictRemoteDataSourceImpl;

  UsecaseConfig() {
    // postRemoteDataSourceImp = PostRemoteDataSourceImp();
    // postRepositoryImpl =
    //     PostRepositoryImpl(postRemoteDataSource: postRemoteDataSourceImp!);
    // getPostsUsecase = GetPostsUsecase(postRepositoryImpl!);
    predictRemoteDataSourceImpl = PredictRemoteDataSourceImpl();
    predictRepositoryImpl = PredictRepositoryImpl(
        predictRemoteDataSource: predictRemoteDataSourceImpl!);
    predictUseCase = PredictUseCase(predictRepositoryImpl!);
  }
}
