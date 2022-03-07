import 'package:flutter/material.dart';
import 'package:pokemon/core/constants/border_radius_const.dart';
import 'package:pokemon/core/constants/color_const.dart';

Widget homePageContainer(BuildContext context, index, data) {
  print(data.id);
  return Padding(
    padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
    child: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusConst.kSmallBorderRadius,
              color: ColorConst.kPrimaryColor,
            ),
            alignment: const Alignment(0, -3),

            // padding: EdgeInsets.only(bottom: 100),

            child: Image.network(data[index].img.toString())),
        Positioned(
          bottom: 12,
          left: 15,
          right: 15,
          child: Container(
            width: MediaQuery.of(context).size.width * 1 / 3,
            height: 30,
            decoration: BoxDecoration(
              color: ColorConst.kGreydark,
              borderRadius: BorderRadiusConst.kExtraSmallBorderRadius,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "001",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Spartan",
                      color: ColorConst.kTextPink,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "name",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Spartan",
                      color: ColorConst.kWhite,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: Image.network(data[index].img.toString()),
          top: 0,
          left: 35,
        ),
      ],
    ),
  );
}
