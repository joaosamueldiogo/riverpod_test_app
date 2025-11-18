import 'package:flutter/material.dart';
import 'package:riverpod_test_app/models/product.dart';
import 'package:riverpod_test_app/widgets/boxed_image.dart';
import 'package:riverpod_test_app/widgets/carroussel.dart';
import 'package:riverpod_test_app/widgets/section_title.dart';

class GetNowWidget extends StatelessWidget {
  const GetNowWidget({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    List<Product> products = Product.getProducts();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SectionTitle(title: "Get It Now"),
        Carroussel(
          height: height,
          length: products.length,
          itemBuilder: (context, index) {
            return Column(
              spacing: height * 0.02,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: BoxedImage(
                    borderRadius: 8,
                    imageUrl: products[index].imageUrl,
                  ),
                ),
                Text(
                  products[index].name,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
                Text(
                  "${products[index].price.toStringAsFixed(2)} €",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
