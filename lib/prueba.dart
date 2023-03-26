import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class prueba extends StatelessWidget {
  const prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        ElevatedButton(
            onPressed: () async {
              try {
                String url = "http://10.0.2.2:8000/api/predict";
                var response = await Dio().post(url,
                    options: Options(
                      headers: {
                        HttpHeaders.contentTypeHeader: "application/json"
                      },
                    ),
                    data: {"holla": "hola"});
                if (response.statusCode == 200) {
                  print(response);
                }
              } on DioError catch (e) {
                print('error');
              }
            },
            child: Text('hola'))
      ],
    ));
  }
}
