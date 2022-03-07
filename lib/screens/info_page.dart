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
        body: Stack(
          children: [
            Center(
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
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "data",
                        style: myTextStyle(
                            color: ColorConst.kTextPink,
                            weight: FontWeight.w800),
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
                  child: _containerInfo(context),
                ))
              ]),
            ),
            //Pokemon rasmi uchun
            Positioned(
              left: MediaQuery.of(context).size.width * 0.17,
              top: MediaQuery.of(context).size.height * 0.25,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.650,
                height: MediaQuery.of(context).size.height * 0.275,
                alignment: Alignment.bottomCenter,
                color: Colors.black,
                child: const Text('Mirjon',
                    style: TextStyle(backgroundColor: Colors.amber)),
              ),
            )
          ],
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

  Widget _containerInfo(context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //  const SizedBox(height: 26,),
                  _easyText(title: 'Altura', data: 'Debilidad'),
                  _easyText(title: 'Peso', data: 'Debilidad'),
                  _easyText(title: 'Habilidades', data: 'Debilidad'),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        _easyText(title: 'Categoría', data: 'Debilidad'),
                        _sexoText,
                      ],
                    ),
                    _easyText(title: 'Debilidad', data: 'Debilidad'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.52,
                  child: Image.asset(
                    "assets/images/naruto.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  Widget _easyText({required String title, required String data}) => Padding(
        padding: PMConst.kExtraSmallPM,
        child: Column(
          children: [
            Text(
              title,
              style: myTextStyle(
                color: ColorConst.kWhite,
                weight: FontWeight.w800,
              ),
            ),
            Text(
              data,
              style: myTextStyle(
                color: ColorConst.kTextInPinkContainerColor,
                weight: FontWeight.w700,
              ),
            ),
          ],
        ),
      );

  Widget get _sexoText => Padding(
        padding: PMConst.kExtraSmallPM,
        child: Column(
          children: [
            Text(
              "Sexo",
              style: myTextStyle(
                color: ColorConst.kWhite,
                weight: FontWeight.w800,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/vs_sex-female.png"),
                Image.asset("assets/icons/vs_sex-male.png"),
              ],
            )
          ],
        ),
      );
}
