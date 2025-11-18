import 'dart:ui';
import 'package:flutter/material.dart';

class Carroussel extends StatelessWidget {
  const Carroussel({
    super.key,
    required this.height,
    required this.length,
    required this.itemBuilder,
  });

  final double height;
  final int length;
  final NullableIndexedWidgetBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ScrollConfiguration(
        behavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
        ),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(8),
          scrollDirection: Axis.horizontal,
          itemCount: length,
          separatorBuilder: (context, _) =>
              SizedBox(width: MediaQuery.of(context).size.width * 0.04),
          itemBuilder: itemBuilder,
        ),
      ),
    );
  }
}
