import 'package:flutter/material.dart';
import 'package:ui_imtahan_codelandia/const/const.dart';
import 'package:ui_imtahan_codelandia/screens/home_page.dart';
import 'package:ui_imtahan_codelandia/widgets/text_widgets.dart';

class TextAndButtonWidgets extends StatelessWidget {
  const TextAndButtonWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: sizeFunc(context, 0.63),
          child: TextWidget(
              text: "Begin Your Gaming Odyssey",
              color: Colors.white,
              size: 32,
              fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          style: const ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(150, 65))),
          child: TextWidget(
              text: "Lets's go!",
              color: Colors.black,
              size: 18,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 35,
        ),
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "By continuing you accept \n\t\tour ",
                style: TextStyle(
                    fontFamily: "Gilroy",
                    color: Color.fromARGB(255, 57, 57, 57),
                    fontSize: 13,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w800),
              ),
              TextSpan(
                text: "Terms of Service",
                style: TextStyle(
                    fontFamily: "Gilroy",
                    color: Colors.white,
                    fontSize: 13,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
