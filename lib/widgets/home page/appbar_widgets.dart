import 'package:flutter/material.dart';
import 'package:ui_imtahan_codelandia/widgets/text_widgets.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
          text: " GAMECOM",
          color: Colors.white,
          fontWeight: FontWeight.bold,
          size: 27,
        ),
        const Stack(children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Color.fromARGB(255, 52, 52, 52),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 20,
            ),
          ),
          Positioned(
            left: 36,
            top: 3,
            child: CircleAvatar(
              radius: 5,
              backgroundColor: Color(0xff51acff),
            ),
          )
        ])
      ],
    );
  }
}