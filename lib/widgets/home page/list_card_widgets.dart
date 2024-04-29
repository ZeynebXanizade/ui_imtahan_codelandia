import 'package:flutter/material.dart';
import 'package:ui_imtahan_codelandia/const/const.dart';
import 'package:ui_imtahan_codelandia/model/card_class.dart';
import 'package:ui_imtahan_codelandia/screens/details_page.dart';
import 'package:ui_imtahan_codelandia/widgets/home%20page/text_widgets.dart';

class ListCardWidget extends StatelessWidget {
  const ListCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: sizeFunc(context, 0.4),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPage(
                              card: myList[index],
                            ))),
                child: Card(
                  elevation: 0,
                  color: const Color(0xff181818).withOpacity(0.7),
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(myList[index].image),
                              )),
                          width: sizeFunc(context, 0.35),
                          height: sizeFunc(context, 0.34),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            HomeTextWidget(
                              text: myList[index].oneText,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                HomeTextWidget(
                                  text: myList[index].twoText,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 10, left: 5),
                                  child: Icon(
                                    Icons.star_half_outlined,
                                    color: Color(0xff51acff),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            HomeTextWidget(
                              text: myList[index].threeText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}

List<Cards> myList = [
  Cards(
      image: "assets/images/ragnarok.jpg",
      oneText: "God of War Ragnarok",
      twoText: "2021 • 4.5",
      threeText: "by StepHanie Myers"),
  Cards(
      image: "assets/images/setter.jpg",
      oneText: "STELLAR BLADE\nOnline ",
      twoText: "2024 • 4.5",
      threeText: "by StepHanie Myers"),
];
