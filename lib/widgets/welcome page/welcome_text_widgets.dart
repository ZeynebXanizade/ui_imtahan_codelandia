import 'package:flutter/material.dart';
import 'package:ui_imtahan_codelandia/widgets/text_widgets.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(
            text: "Welcome to Gamecom",
            color: Colors.white,
            size: 16,
            fontWeight: FontWeight.normal),
        const SizedBox(
          width: 5,
        ),
        Image.asset(
          "assets/images/game_remote_control.png",
          width: 20,
        )
      ],
    );
  }
}
