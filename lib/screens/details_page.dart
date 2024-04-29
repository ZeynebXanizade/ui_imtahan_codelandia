import 'package:flutter/material.dart';
import 'package:ui_imtahan_codelandia/const/const.dart';
import 'package:ui_imtahan_codelandia/model/card_class.dart';
import 'package:ui_imtahan_codelandia/widgets/details%20page/about_details_widgets.dart';
import 'package:ui_imtahan_codelandia/widgets/details%20page/details_appbar_widgets.dart';

class DetailsPage extends StatelessWidget {
  final Cards card;
  const DetailsPage({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: Stack(
        children: [
         
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const DetailsAppBarWidget(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: sizeFunc(context, 0.9),
                  width: sizeFunc(context, 0.9),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage(card.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AboutDetailsWidget(
            card: card,
          ),
        ],
      ),
    );
  }
}
