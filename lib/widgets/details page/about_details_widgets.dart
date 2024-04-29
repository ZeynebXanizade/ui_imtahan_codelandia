import 'package:flutter/material.dart';
import 'package:ui_imtahan_codelandia/const/const.dart';
import 'package:ui_imtahan_codelandia/model/card_class.dart';
import 'package:ui_imtahan_codelandia/widgets/details%20page/button_details_widget.dart';
import 'package:ui_imtahan_codelandia/widgets/text_widgets.dart';

class AboutDetailsWidget extends StatelessWidget {
  final Cards card;
  const AboutDetailsWidget({
    super.key,
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 440,
      child: Container(
        width: sizeFunc(context, 1),
        height: sizeFunc(context, 1.16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.02, 1],
            colors: [
              const Color(0xff2a3643).withOpacity(1),
              const Color(0xff000000).withOpacity(1),
            ],
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: 50,
                height: 7,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                height: 8,
              ),
              TextWidget(
                  text: card.oneText,
                  color: Colors.white,
                  size: 30,
                  fontWeight: FontWeight.bold),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                      text: "2018 • Santa Monica Studio • ",
                      color: Colors.grey,
                      size: 18,
                      fontWeight: FontWeight.normal),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(
                      Icons.star_half_outlined,
                      color: Color(0xff51acff),
                    ),
                  ),
                  TextWidget(
                      text: "4.8",
                      color: Colors.grey,
                      size: 18,
                      fontWeight: FontWeight.normal),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextWidget(
                  text:
                      "Join Kratos and Atreus on a mythic journey\nfor answers before Ragnarok arrives.",
                  color: Colors.white,
                  size: 18,
                  fontWeight: FontWeight.normal),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DetailsButtonWidget(
                    text: "Action",
                    width: 85,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: DetailsButtonWidget(
                      text: "Adventure",
                      width: 110,
                    ),
                  ),
                  DetailsButtonWidget(
                    text: "Open world",
                    width: 120,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size(320, 70))),
                child: TextWidget(
                    text: "Mark as played",
                    color: Colors.black,
                    size: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
