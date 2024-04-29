import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_imtahan_codelandia/widgets/home%20page/navigation_widgets.dart';
import 'package:ui_imtahan_codelandia/widgets/text_widgets.dart';

class DetailsAppBarWidget extends StatelessWidget {
  const DetailsAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.withOpacity(0.2),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        TextWidget(
            text: "Details",
            color: Colors.white,
            size: 20,
            fontWeight: FontWeight.normal),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.withOpacity(0.2),
          child: const Icon(
            Icons.more_horiz_outlined,
            color: Colors.white,
            size: 20,
          ),
        ),
      ],
    );
  }
}
