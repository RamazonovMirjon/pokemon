import 'package:flutter/material.dart';
import 'package:pokemon/core/constants/border_radius_const.dart';
import 'package:pokemon/core/constants/color_const.dart';
import 'package:pokemon/core/constants/p_m_const.dart';

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
                  child: Text(
                    "Buscar Pokémon",
                    style: TextStyle(
                      fontFamily: "Spartan",
                      color: ColorConst.kTextGrey,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/Vector.png"))
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Padding(
              padding: PMConst.kSmallPM,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("data"),
                  Text("Name"),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height*0.23,
              width: double.infinity,
              decoration: BoxDecoration(color: ColorConst.kPrimaryColor2),
              alignment: Alignment.center,
              child: Hero(tag: "@",child: Container(height: 200,width: 300,color: Colors.white,),),
            )
          ]),
        ),
      ),
    );
  }
}
