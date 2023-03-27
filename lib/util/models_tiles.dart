import 'package:appia/main.dart';
import 'package:flutter/material.dart';

class ModelTile extends StatelessWidget {
  //const ModelTile({super.key});
  final String ImagePath;
  final String Name;
  final String Des;

  ModelTile({
    required this.ImagePath,
    required this.Name,
    required this.Des,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(ImagePath),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Name,
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(children: [
                Expanded(
                  child: Text(Des),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
