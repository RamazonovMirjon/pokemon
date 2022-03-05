import 'package:flutter/material.dart';
import 'package:pokemon/core/constants/border_radius_const.dart';
import 'package:pokemon/core/constants/color_const.dart';
import 'package:pokemon/core/constants/p_m_const.dart';
import 'package:pokemon/widgets/my_text_style.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          // bu elementlarni markazdan quyilishini taminlaydi
          child: Column(children: [
            Padding(
              padding: PMConst.kMediumPM,
              child: Image.asset("assets/images/pokemonText.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: ColorConst.kIconColor,
                      size: 14,
                    )),
                Container(
                  height: MediaQuery.of(context).size.height * 0.04687,
                  width: MediaQuery.of(context).size.width * 0.517,
                  decoration: BoxDecoration(
                    color: ColorConst.kGrey,
                    borderRadius: BorderRadiusConst.kMediumBorderRadius,
                  ),
                  alignment: Alignment.center,
                  child: Text("Buscar Pokémon",
                      style: myTextStyle(color: ColorConst.kTextGrey)),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/Vector.png"))
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "data",
                    style: myTextStyle(
                        color: ColorConst.kTextPink, weight: FontWeight.w800),
                  ),
                  Text(
                    "Name",
                    style: myTextStyle(
                        color: Colors.black, weight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.23,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConst.kPrimaryColor,
                  borderRadius: BorderRadiusConst.kLargeBorderRadius),
              alignment: Alignment.center,
              child: Hero(
                tag: "@",
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: PMConst.kSmallPM,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _myButtom(context, "Fuego", ColorConst.kOrrengeColor),
                  _myButtom(context, "Volador", ColorConst.kBlueColor),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: ColorConst.kPrimaryColor,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(60),
                    topLeft: Radius.circular(60)),
              ),
              child: _containerInfo,
            ))
          ]),
        ),
      ),
    );
  }

  Widget _myButtom(BuildContext context, String text, Color color) => InkWell(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 38,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadiusConst.kExtraSmallBorderRadius,
          ),
          alignment: Alignment.center,
          child: Text(text,
              style: myTextStyle(
                  weight: FontWeight.w800, color: ColorConst.kWhite)),
        ),
      );

  Widget get _containerInfo => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Column(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(),
                Image.asset("assets/images/naruto.png"),
              ],
            ),
          ),
        ],
      );
}
