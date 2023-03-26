import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class prueba2 extends StatelessWidget {
  const prueba2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        ElevatedButton(
            onPressed: () async {
              uploadImage();
            },
            child: Text('ohla'))
      ],
    ));
  }

  Future<void> uploadImage() async {
    final picker = ImagePicker();
    // ignore: deprecated_member_use
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    final bytes = await pickedFile!.readAsBytes();

    final dio = Dio();
    dio.options.baseUrl = 'http://192.168.0.84:8000/';
    //dio.options.headers['Authorization'] = 'Bearer your-token';

    final formData = FormData.fromMap({
      'image': MultipartFile.fromBytes(bytes, filename: 'image.jpg'),
    });

    try {
      final response = await dio.post('api/predict', data: formData);
      //print(response.data);
      print('hey');
    } catch (e) {
      print(e.toString());
    }
    print(bytes);
  }
}
