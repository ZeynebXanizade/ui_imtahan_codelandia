// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  String text;
  Color color;
  double size;
  FontWeight fontWeight;
  TextWidget({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 2,
      textAlign: TextAlign.center,
      text,
      style: TextStyle(
          color: color,
          fontFamily: "Gilroy",
          fontSize: size,
          fontWeight: fontWeight,
          decoration: TextDecoration.none),
    );
  }
}
