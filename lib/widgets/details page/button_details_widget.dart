import 'package:flutter/material.dart';
import 'package:ui_imtahan_codelandia/widgets/text_widgets.dart';

class DetailsButtonWidget extends StatelessWidget {
  final String text;
  final double width;

  const DetailsButtonWidget({
    super.key,
    required this.text,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Colors.grey.withOpacity(0.2)),
          fixedSize: MaterialStatePropertyAll(Size(width, 55))),
      child: TextWidget(
          text: text,
          color: Colors.white,
          size: 12,
          fontWeight: FontWeight.normal),
    );
  }
}
