import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(25),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        filled: true,
        fillColor: Colors.black.withOpacity(0.05),
        hintText: "Search",
        hintStyle:
            const TextStyle(color: Colors.black38, fontSize: 20),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 30, right: 50),
          child: Icon(
            Icons.search,
            color: Colors.black38,
            size: 25,
          ),
        ),
      ),
    );
  }
}
