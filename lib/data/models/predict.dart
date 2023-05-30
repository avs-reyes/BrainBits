import 'dart:typed_data';
import '../../dominio/entities/predict.dart';

class PredictModel extends Predict {
  PredictModel({
    required Uint8List image,
  }) : super(image: image);

  factory PredictModel.fromJson(Map<String, dynamic> json) {
    return PredictModel(
      image: json['image'],
    );
  }

  factory PredictModel.fromEntity(Predict predict) {
    return PredictModel(image: predict.image);
  }
}
