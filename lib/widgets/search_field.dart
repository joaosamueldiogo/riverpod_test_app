import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Color(0xff424242), fontSize: 14),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xfff5f5f5),
        hintText: "Search",
        hintStyle: TextStyle(color: Color(0xff828282), fontSize: 14),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12),

          child: Icon(Icons.search, color: Color(0xff828282)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
