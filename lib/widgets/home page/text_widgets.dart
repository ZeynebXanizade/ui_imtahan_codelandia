import 'package:flutter/material.dart';
import 'package:ui_imtahan_codelandia/widgets/text_widgets.dart';

class HomeTextWidget extends StatelessWidget {
  final String text;
  const HomeTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: TextWidget(
        text: text,
        color: Colors.white,
        fontWeight: FontWeight.normal,
        size: 14,
      ),
    );
  }
}
