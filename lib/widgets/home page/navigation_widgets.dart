import 'package:flutter/material.dart';
import 'package:ui_imtahan_codelandia/const/const.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: sizeFunc(context, 0.06),
      left: sizeFunc(context, 0.1),
      child: Container(
        width: sizeFunc(context, 0.80),
        height: sizeFunc(context, 0.20),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.6),
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CircleAvatarWidget(
              icon: Icons.home_filled,
              colorBackground: Colors.white,
              colorIcon: Colors.black,
            ),
            CircleAvatarWidget(
              icon: Icons.search,
              colorBackground: Colors.black.withOpacity(0.7),
              colorIcon: Colors.white,
            ),
            CircleAvatarWidget(
              icon: Icons.favorite_outlined,
              colorBackground: Colors.black.withOpacity(0.7),
              colorIcon: Colors.white,
            ),
            CircleAvatarWidget(
              icon: Icons.person,
              colorBackground: Colors.black.withOpacity(0.7),
              colorIcon: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class CircleAvatarWidget extends StatelessWidget {
  final IconData icon;
  final Color colorBackground;
  final Color colorIcon;
  const CircleAvatarWidget({
    super.key,
    required this.icon,
    required this.colorBackground,
    required this.colorIcon,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: colorBackground,
      child: Icon(
        icon,
        color: colorIcon,
        size: 30,
      ),
    );
  }
}
