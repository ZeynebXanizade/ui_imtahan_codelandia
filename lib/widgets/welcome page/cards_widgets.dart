import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_imtahan_codelandia/const/const.dart';

class CardsWidget extends StatelessWidget {
  const CardsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(children: [
      Positioned(
        top: 30,
        left: -80,
        child: ContainerWidget(
          angle: 18.5,
          imagePath: "ragnarok_3.jpg",
        ),
      ),
      Positioned(
        right: 70,
        top: 30,
        child: ContainerWidget(
          angle: 12.9,
          imagePath: "ragnarok.jpg",
        ),
      ),
      Positioned(
        left: 290,
        top: 10,
        child: ContainerWidget(
          angle: 18.7,
          imagePath: "setter.jpg",
        ),
      ),
    ]);
  }
}

class ContainerWidget extends StatelessWidget {
  final double angle;
  final String imagePath;
  const ContainerWidget({
    super.key,
    required this.angle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        width: sizeFunc(context, 0.60),
        height: sizeFunc(context, 0.75),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: const Border(
              bottom: BorderSide(
                color: Color(0xff1a65f6),
                width: 10,
              ),
              top: BorderSide(
                color: Color(0xff1a65f6),
                width: 10,
              ),
              right: BorderSide(
                color: Color(0xff1a65f6),
                width: 10,
              ),
            ),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/$imagePath",
                ))),
      ),
    );
  }
}
