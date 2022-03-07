import 'package:flutter/material.dart';
import 'package:pokemon/core/constants/border_radius_const.dart';
import 'package:pokemon/core/constants/color_const.dart';
import 'package:pokemon/core/constants/p_m_const.dart';
import 'package:pokemon/models/pokemon_model.dart';
import 'package:pokemon/services/pokemon_service.dart';
import 'package:pokemon/widgets/my_text_style.dart';

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
                  style: myTextStyle(color: ColorConst.kTextGrey),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Expanded(
                //bu widget qolgan joyni egallaydi
                child: FutureBuilder(
                  future: PokemonService.getPokemones(),
                  builder: (context, AsyncSnapshot<List<PokedexModel>> snap) {
                    if (!snap.hasData) {
                      return const Center(
                          child: CircularProgressIndicator.adaptive());
                    } else if (snap.hasError) {
                      return Center(child: Text("ERROR"));
                    } else {
                      var data = snap.data!.first.pokemon!;
                      print(data);
                      return Padding(
                        padding: PMConst.kExtraSmallPM,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 1.35),
                          itemBuilder: (BuildContext context, int index) =>
                              InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 10, right: 10),
                                    child: Stack(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadiusConst
                                                  .kSmallBorderRadius,
                                              color: ColorConst.kPrimaryColor,
                                            ),
                                            alignment: const Alignment(0, -3),

                                            // padding: EdgeInsets.only(bottom: 100),

                                            child: Image.network(
                                                data[index].img.toString())),
                                        Positioned(
                                          bottom: 12,
                                          left: 15,
                                          right: 15,
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1 /
                                                3,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: ColorConst.kGreydark,
                                              borderRadius: BorderRadiusConst
                                                  .kExtraSmallBorderRadius,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "001",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: "Spartan",
                                                      color:
                                                          ColorConst.kTextPink,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Text(
                                                  "name",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: "Spartan",
                                                      color: ColorConst.kWhite,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          child: Image.network(
                                              data[index].img.toString()),
                                          top: 0,
                                          left: 35,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(context, "/info");
                                  }),
                          scrollDirection: Axis.vertical,
                          itemCount: data.length,
                          // controller: ScrollController(),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
