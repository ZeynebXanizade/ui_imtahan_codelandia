import 'package:flutter/material.dart';
import 'package:ui_imtahan_codelandia/widgets/text_widgets.dart';

class HomeAboutWidget extends StatelessWidget {
  const HomeAboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Column(
          children: [
            TextWidget(
              color: const Color.fromARGB(255, 222, 220, 220),
              text: " Up on your wish list",
              fontWeight: FontWeight.normal,
              size: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextWidget(
                fontWeight: FontWeight.normal,
                size: 15,
                color: Colors.white,
                text: "Stellar Blade",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  fontWeight: FontWeight.normal,
                  size: 15,
                  color: const Color.fromARGB(255, 222, 220, 220),
                  text: "2024 • Shift Up • ",
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(
                    Icons.star_half_outlined,
                    color: Color(0xff51acff),
                  ),
                ),
                TextWidget(
                  fontWeight: FontWeight.normal,
                  size: 15,
                  color: const Color.fromARGB(255, 222, 220, 220),
                  text: "4.5",
                ),
              ],
            ),
          ],
        ));
  }
}
