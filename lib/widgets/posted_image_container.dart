import 'package:flutter/material.dart';

class postedImagesContainer extends StatelessWidget {
  postedImagesContainer({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}
