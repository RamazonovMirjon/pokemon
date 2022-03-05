import 'package:flutter/material.dart';
import 'package:pokemon/core/constants/border_radius_const.dart';
import 'package:pokemon/core/constants/color_const.dart';
import 'package:pokemon/core/constants/p_m_const.dart';
import 'package:pokemon/widgets/home_page_container.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          // bu elementlarni markazdan quyilishini taminlaydi
          child: Column(
            children: [
              Padding(
                padding: PMConst.kMediumPM,
                child: Image.asset("assets/images/pokemonText.png"),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.04687,
                width: MediaQuery.of(context).size.width * 0.6712,
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Expanded(
                  //bu widget qolgan joyni egallaydi
                  child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.35),
                itemBuilder: (BuildContext context, int index) => InkWell(
                    child: homePageContainer(context),
                    onTap: () {
                      Navigator.pushNamed(context, "/info");
                    }),
                scrollDirection: Axis.vertical,
                itemCount: 150,
                // controller: ScrollController(),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
