import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pokedex/ui/views/detail/vm_details.dart';
import 'package:pokedex/core/models/all_pokemons_model.dart';
import 'package:pokedex/core/resources/r.dart';

@RoutePage()
class ViewDetailPage extends StatelessWidget {
  const ViewDetailPage({
    super.key,
    required this.pokemon,
  });
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Consumer<VMDetails>(
      builder: (context, detailController, child) => Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(R.drawable.img1.pokeballBack),
                fit: BoxFit.contain,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "#${pokemon.num.toString()}",
                            style: TextStyle(
                              fontSize: R.dimens.numberSize,
                              fontWeight: FontWeight.bold,
                              color: R.appColor.clr.defaultColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          shape: BoxShape.circle,
                        ),
                        child: pokemon.img == null
                            ? CircularProgressIndicator(
                                color: R.appColor.clr.errorColor,
                              )
                            : Image.network(
                                pokemon.img ?? R.drawable.img1.noImage,
                                scale: 0.7,
                              ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemExtent: MediaQuery.of(context).size.height / 2,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: R.appColor.clr.greyColor,
                                  offset: const Offset(0, 1),
                                  spreadRadius: 5,
                                  blurRadius: 18,
                                ),
                              ],
                              color: R.appColor.clr.redColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: pokemon.name.toString(),
                                        style: TextStyle(
                                          fontSize: R.dimens.detailHeaderSize,
                                          letterSpacing: 3,
                                          color: R.appColor.clr.neutralColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "\nType: ",
                                        style: TextStyle(
                                          fontSize: R.dimens.detailSize,
                                          fontWeight: FontWeight.bold,
                                          color: R.appColor.clr.neutralColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: pokemon.type.toString(),
                                        style: TextStyle(
                                          fontSize: R.dimens.detailSize,
                                          color: R.appColor.clr.neutralColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "\nCandy: ",
                                        style: TextStyle(
                                          fontSize: R.dimens.detailSize,
                                          fontWeight: FontWeight.bold,
                                          color: R.appColor.clr.neutralColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: pokemon.candy.toString(),
                                        style: TextStyle(
                                          fontSize: R.dimens.detailSize,
                                          color: R.appColor.clr.neutralColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "\nHeight: ",
                                        style: TextStyle(
                                          fontSize: R.dimens.detailSize,
                                          fontWeight: FontWeight.bold,
                                          color: R.appColor.clr.neutralColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: pokemon.height.toString(),
                                        style: TextStyle(
                                          fontSize: R.dimens.detailSize,
                                          color: R.appColor.clr.neutralColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "\nWeight: ",
                                        style: TextStyle(
                                          fontSize: R.dimens.detailSize,
                                          fontWeight: FontWeight.bold,
                                          color: R.appColor.clr.neutralColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: pokemon.weight.toString(),
                                        style: TextStyle(
                                          fontSize: R.dimens.detailSize,
                                          color: R.appColor.clr.neutralColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "\nWeaknesses: ",
                                        style: TextStyle(
                                          fontSize: R.dimens.detailSize,
                                          fontWeight: FontWeight.bold,
                                          color: R.appColor.clr.neutralColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: pokemon.weaknesses.toString(),
                                        style: TextStyle(
                                          fontSize: R.dimens.detailSize,
                                          color: R.appColor.clr.neutralColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "\nEgg: ",
                                        style: TextStyle(
                                          fontSize: R.dimens.detailSize,
                                          fontWeight: FontWeight.bold,
                                          color: R.appColor.clr.neutralColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: pokemon.egg.toString(),
                                        style: TextStyle(
                                          fontSize: R.dimens.detailSize,
                                          color: R.appColor.clr.neutralColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
