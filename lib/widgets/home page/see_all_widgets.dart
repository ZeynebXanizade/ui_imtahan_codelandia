import 'package:flutter/material.dart';
import 'package:ui_imtahan_codelandia/widgets/text_widgets.dart';

class SeeAllWidget extends StatelessWidget {
  const SeeAllWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: "Latest Reviews",
              color: Colors.white,
              fontWeight: FontWeight.normal,
              size: 25,
            ),
            Row(
              children: [
                TextWidget(
                  text: "See all",
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  size: 17,
                ),
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Color.fromARGB(255, 52, 52, 52),
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
