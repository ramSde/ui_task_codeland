import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller ;
  String hintword;
   CustomTextField({required this.controller, required this.hintword});

  @override
  Widget build(BuildContext context) {
    return Container(
  decoration: BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 1.0,
    ),
    borderRadius: BorderRadius.circular(8.0), 
  ),
  child: TextField(
    controller: controller,
    decoration: InputDecoration(
      hintText: hintword,
      border: InputBorder.none, // Hide the default border of the TextField
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), 
    ),
  ),
);

  }
}