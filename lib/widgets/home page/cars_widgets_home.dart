import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_imtahan_codelandia/const/const.dart';
class CardsHomeWidgets extends StatelessWidget {
  const CardsHomeWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 4,
      child: Stack(children: [
        Positioned(
          left: 10,
          top: 80,
          child: ContainerWidget(
            sizeHeight: 0.4,
            sizeWidth: 0.38,
            angle: 18.7,
            imagePath: "ragnarok_2_.jpg",
          ),
        ),
        Positioned(
          left: 165,
          top: 80,
          child: ContainerWidget(
            sizeHeight: 0.4,
            sizeWidth: 0.38,
            angle: 19,
            imagePath: "ragnarok.jpg",
          ),
        ),
        Positioned(
          right: 60,
          top: 20,
          child: ContainerWidget(
            sizeHeight: 0.6,
            sizeWidth: 0.6,
            angle: 0,
            imagePath: "setter.jpg",
          ),
        ),
      ]),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final double angle;
  final String imagePath;
  final double sizeWidth;
  final double sizeHeight;
  const ContainerWidget({
    super.key,
    required this.angle,
    required this.imagePath,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        width: sizeFunc(context, sizeWidth),
        height: sizeFunc(context, sizeHeight),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/$imagePath",
                ))),
      ),
    );
  }
}
