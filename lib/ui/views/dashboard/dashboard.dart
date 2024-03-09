import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/core/models/all_pokemons_model.dart';
import 'package:pokedex/core/resources/r.dart';
import 'package:pokedex/ui/views/dashboard/vm_all_pokemons.dart';
import 'package:pokedex/core/services/app_router.gr.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ViewDashboard extends StatelessWidget {
  const ViewDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final allPokeController = Provider.of<VMAllPokemons>(context);

    return Consumer<VMAllPokemons>(
      builder: (context, value, child) => SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(color: R.appColor.clr.appBar),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 44,
                        height: 44,
                        child: Image.asset(
                          R.drawable.img1.pokeball,
                        ),
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      Text(
                        "Pokédex",
                        style: TextStyle(
                            fontSize: R.dimens.dashboardHeaderSize,
                            color: R.appColor.clr.heading,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: R.appColor.clr.neutralColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: allPokeController.isBusy == true
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 1,
                                      childAspectRatio: 1,
                                      crossAxisSpacing: 1),
                              itemCount: allPokeController
                                      .allPokeModal?.pokemon?.length ??
                                  0,
                              itemBuilder: (BuildContext context, int index) =>
                                  GestureDetector(
                                onTap: () {
                                  context.router.push(
                                    RouteDetailPage(
                                      pokemon: allPokeController
                                              .allPokeModal?.pokemon?[index] ??
                                          Pokemon(),
                                    ),
                                  );
                                },
                                child: Card(
                                  elevation: 3,
                                  color: R.appColor.clr.greyColor2,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: Image.network(
                                          allPokeController.allPokeModal
                                                  ?.pokemon?[index].img ??
                                              R.drawable.img1.noImage,
                                          fit: BoxFit.fill,
                                          loadingBuilder:
                                              (BuildContext context,
                                                  Widget child,
                                                  ImageChunkEvent?
                                                      loadingProgress) {
                                            if (loadingProgress == null) {
                                              return child;
                                            } else {
                                              return Center(
                                                child:
                                                    CircularProgressIndicator(
                                                  color: R.appColor.clr
                                                      .defaultColor,
                                                ),
                                              );
                                            }
                                          },
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return SizedBox(
                                              height: 100,
                                              width: 100,
                                              child: Image.asset(
                                                R.drawable.img1.noImage,
                                                fit: BoxFit.fill,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      Expanded( 
                                        child: Text( 
                                          allPokeController.allPokeModal
                                                  ?.pokemon?[index].name ??
                                              "--",
                                          style: TextStyle(
                                            color: R.appColor.clr.defaultColor,
                                            fontSize:
                                                R.dimens.dashboardDetailSize, 
                                          ),maxLines: 2, overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
