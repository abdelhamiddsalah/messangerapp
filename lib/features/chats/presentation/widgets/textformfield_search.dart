import 'package:flutter/material.dart';

class TextformfieldSearch extends StatelessWidget {
  const TextformfieldSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xff666666).withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(Icons.search, color: Colors.black),
        hintText: 'Search',
    ));
  }
}
