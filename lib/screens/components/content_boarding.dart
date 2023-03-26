import 'package:flutter/material.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({super.key, this.text, this.image, this.descripcion});
  final String? text;
  final String? image;
  final String? descripcion;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Image.asset(
              image!,
              height: 220,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              text!,
              style: const TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 110, 26, 124)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              descripcion!,
              style: const TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 155, 159, 161)),
            ),
          ),
        ],
      ),
    );
  }
}
