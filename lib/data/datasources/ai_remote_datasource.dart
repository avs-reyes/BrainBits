import 'package:appia/dominio/entities/predict.dart';
import 'package:dio/dio.dart';

abstract class PredictRemoteDataSource {
  Future<void> predict(Predict predict);
}

class PredictRemoteDataSourceImpl extends PredictRemoteDataSource {
  String ip = 'https://92a6-187-135-112-128.ngrok-free.app/';

  @override
  Future<void> predict(Predict predict) async {
    final dio = Dio();
    var respuesta;
    dio.options.baseUrl = ip;
    //dio.options.headers['Authorization'] = 'Bearer your-token';

    final formData = FormData.fromMap({
      'image': MultipartFile.fromBytes(predict.image, filename: 'image.jpg'),
    });
    try {
      final response = await dio.post('api/model/', data: formData);
      print(response.data);
      final respuesta = response.data;
      print('Imagen enviada BLOC');
      return respuesta;
    } catch (e) {
      print('puta madreeee');
      print(e.toString());
    }
  }
}
