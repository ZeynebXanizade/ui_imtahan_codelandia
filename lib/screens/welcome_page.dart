import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_imtahan_codelandia/widgets/welcome%20page/cards_widgets.dart';
import 'package:ui_imtahan_codelandia/widgets/welcome%20page/welcome_text_button.dart';
import 'package:ui_imtahan_codelandia/widgets/welcome%20page/welcome_text_widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Color(0xff181818),
            Color(0xff51acff),
            Color(0xff000000),
          ])),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(flex: 4, child: WelcomeTextWidget()),
          Expanded(flex: 8, child: CardsWidget()),
          Expanded(flex: 6, child: TextAndButtonWidgets())
        ],
      ),
    );
  }
}
