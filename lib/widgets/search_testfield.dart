import 'package:flutter_application_1/constants/color.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var kPrimaryColor2 = kPrimaryColor;
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
          size: 26,
        ),
        suffixIcon: Icon(
          Icons.mic,
          color: kPrimaryColor2,
          size: 26,
        ),
        // helperText: "Search your topic",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: "Search your topic",
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