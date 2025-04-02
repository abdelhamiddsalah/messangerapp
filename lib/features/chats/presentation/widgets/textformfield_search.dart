import 'package:flutter/material.dart';

class TextformfieldSearch extends StatelessWidget {
  const TextformfieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40, // ✅ تقليل الطول هنا
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 8), // ✅ تقليل المسافة الداخلية
          filled: true,
          fillColor: const Color(0xfff2f2f2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          prefixIcon: const Icon(Icons.search, color: Colors.black),
          hintText: 'Search',
        ),
      ),
    );
  }
}
