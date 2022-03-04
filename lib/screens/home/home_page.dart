import 'package:flutter/material.dart';
import 'package:pokemon/core/constants/border_radius_const.dart';
import 'package:pokemon/core/constants/color_const.dart';
import 'package:pokemon/core/constants/p_m_const.dart';

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
                padding: PMConst.kLargePM,
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              Expanded(   //bu widget qolgan joyni egallaydi
                child: Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
