import 'package:flutter/material.dart';
import 'package:pokemon/core/constants/border_radius_const.dart';
import 'package:pokemon/core/constants/color_const.dart';
import 'package:pokemon/core/constants/p_m_const.dart';

class MYSliver extends StatefulWidget {
  MYSliver({Key? key}) : super(key: key);

  @override
  State<MYSliver> createState() => _SliverState();
}

class _SliverState extends State<MYSliver> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
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
              background: Padding(
                padding: PMConst.kLargePM,
                child: Image.asset("assets/images/pokemonText.png"),
              ),
            ),
          ),
          SliverGrid.count(crossAxisCount: 150),
        ],
      ),
    );
  }
}

///sviperga urunish;