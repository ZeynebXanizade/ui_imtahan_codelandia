import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_imtahan_codelandia/widgets/home%20page/appbar_widgets.dart';
import 'package:ui_imtahan_codelandia/widgets/home%20page/cars_widgets_home.dart';
import 'package:ui_imtahan_codelandia/widgets/home%20page/home_about_widgets.dart';
import 'package:ui_imtahan_codelandia/widgets/home%20page/list_card_widgets.dart';
import 'package:ui_imtahan_codelandia/widgets/home%20page/navigation_widgets.dart';
import 'package:ui_imtahan_codelandia/widgets/home%20page/see_all_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: RadialGradient(radius: 1, colors: [
            Color(0xff181818),
            Color(0xff51acff),
            Color(0xff000000),
          ])),
          child: const Padding(
            padding: EdgeInsets.only(left: 30, top: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeAppBarWidget(),
                CardsHomeWidgets(),
                HomeAboutWidget(),
                SeeAllWidget(),
                ListCardWidget(),
              ],
            ),
          ),
        ),
        const NavigationWidget()
      ],
    );
  }
}
