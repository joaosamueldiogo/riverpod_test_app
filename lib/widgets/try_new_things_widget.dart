import 'package:flutter/material.dart';
import 'package:riverpod_test_app/models/category.dart';
import 'package:riverpod_test_app/widgets/boxed_image.dart';
import 'package:riverpod_test_app/widgets/carroussel.dart';
import 'package:riverpod_test_app/widgets/modal.dart';
import 'package:riverpod_test_app/widgets/section_title.dart';

class TryNewThingsWidget extends StatelessWidget {
  const TryNewThingsWidget({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    List<Category> categories = Category.getCategories();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SectionTitle(title: "Try New Things"),
        Carroussel(
          length: categories.length,
          height: height,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              if (context.read<AppCubit>().hasSeenCategory(
                categories[index].name,
              )) {
                return;
              }
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Modal(categoryName: categories[index].name);
                },
              );
            },
            child: BlocBuilder<AppCubit, AppState>(
              builder: (BuildContext context, AppState state) {
                return Stack(
                  children: [
                    Column(
                      spacing: height * 0.05,
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        Flexible(
                          child: BoxedImage(
                            borderRadius: height / 2,
                            imageUrl: categories[index].imageUrl,
                          ),
                        ),
                        Text(
                          categories[index].name,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    if (state.hasSeenCategory(categories[index].name))
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(height * 0.1),
                        ),
                        child: Icon(
                          Icons.check_circle,

                          color: Colors.green,
                          size: height * 0.2,
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
