import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  Searchbar({
    this.onSubmitted,
    Key? key,
    // this.controller,
  }) : super(key: key);
  // void Function(String)? onChanged;
  // final controller;
  void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 16),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: TextField(
        // controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: IconButton(
            onPressed: () {
              // onChanged();
            },
            icon: Icon(Icons.search),
          ),
          hintText: 'Seach city',
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
        ),
        // onChanged: onChanged,
        onSubmitted:onSubmitted,
      ),
    );
  }
}
