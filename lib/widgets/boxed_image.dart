import 'package:flutter/material.dart';

class BoxedImage extends StatelessWidget {
  const BoxedImage({
    super.key,
    required this.borderRadius,
    required this.imageUrl,
  });

  final double borderRadius;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: AspectRatio(
        aspectRatio: 1, // ensures perfect square
        child: Image.network(imageUrl, fit: BoxFit.cover),
      ),
    );
  }
}
