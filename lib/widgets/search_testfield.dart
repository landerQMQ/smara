// import 'package:education_app/constants/color.dart';
import 'package:flutter/material.dart';

class SearchTextFieldPlacehold extends StatelessWidget {
  final String placeholder;
  const SearchTextFieldPlacehold({
    Key? key,
        required this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
          size: 26,
        ),
        // suffixIcon: const Icon(
        //   Icons.mic,
        //   color: kPrimaryColor,
        //   size: 26,
        // ),
        // helperText: "Search your topic",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        // labelText: "Search your topic",
        labelText: placeholder,
        labelStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        isDense: true,
      ),
    );
  }
}
