import 'package:flutter/material.dart';
import 'package:pokemon/core/constants/border_radius_const.dart';
import 'package:pokemon/core/constants/color_const.dart';

Widget homePageContainer(BuildContext context) => Padding(
      padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusConst.kSmallBorderRadius,
              color: ColorConst.kPrimaryColor2,
            ),
            alignment: const Alignment(0, -3),
            child: Container(
              color: Colors.black,
              height: 100,
              width: 100,
            ),
          ),
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
              ))
        ],
      ),
    );
