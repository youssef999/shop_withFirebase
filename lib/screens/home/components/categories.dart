import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';


class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/icons8-babys-room.svg", "text": "Baby Care"},
      {"icon": "assets/icons/icons8-woman-combing-hair.svg", "text": "Woman Care"},
      {"icon": "assets/icons/icons8-man.svg", "text": "Man Care"},
      {"icon": "assets/icons/icons8-hair-washing.svg", "text": "Hair Care"},
      {"icon": "assets/icons/icons8-massage.svg", "text": "Skin & Hair"},
      {"icon": "assets/icons/icons8-tooth.svg", "text": "Oral Care"},
      {"icon": "assets/icons/icons8-organic-food.svg", "text": "Organic\n Products"},
      {"icon": "assets/icons/icons8-medical.svg", "text": "Medical\n Supplies"},
      {"icon": "assets/icons/icons8-protection-mask.svg", "text": "Protection\n 101"},
      {"icon": "assets/icons/icons8-gender.svg", "text": "Sexual\n Wellbeing"},
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(8.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            categories.length,
            (index) => Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Column(
                children: [
                  Container(
                    width: 64,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70),
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                      ),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                            offset: Offset(0, 6),
                            blurRadius: 23)
                      ],
                      color: Color.fromRGBO(255, 255, 255, 1),
                      border: Border.all(
                        color: Color.fromRGBO(9, 15, 71, 1).withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: CategoryCard(
                      icon: categories[index]["icon"],
                      text: categories[index]["text"],
                      press: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFFAFC2E5),
                  Color(0xFF7DBEED),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                borderRadius: BorderRadius.circular(50),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11.0),
            )
          ],
        ),
      ),
    );
  }
}
      // Figma Flutter Generator Rectangle923Widget - RECTANGLE
  //     Container(
  //       width: 64,
  //       height: 98,
  //       decoration: BoxDecoration(
  //         borderRadius : BorderRadius.only(
  //           topLeft: Radius.circular(70),
  //           topRight: Radius.circular(70),
  //           bottomLeft: Radius.circular(70),
  //           bottomRight: Radius.circular(70),
  //         ),
  //     boxShadow : [BoxShadow(
  //         color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
  //         offset: Offset(0,6),
  //         blurRadius: 23
  //     )],
  //     color : Color.fromRGBO(255, 255, 255, 1),
  //     border : Border.all(
  //         color: Color.fromRGBO(9, 15, 71, 1),
  //         width: 1,
  //       ),
  // )
  //     )