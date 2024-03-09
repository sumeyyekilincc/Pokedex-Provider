import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/core/resources/r.dart';
import 'package:pokedex/core/services/app_router.gr.dart';

@RoutePage()
class ViewWelcoming extends StatefulWidget {
  const ViewWelcoming({super.key});

  @override
  State<ViewWelcoming> createState() => _ViewWelcomingState();
}

class _ViewWelcomingState extends State<ViewWelcoming> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        context.router.push(const RouteDashboard());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: R.appColor.clr.appBar),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                R.drawable.img1.pokeball,
                height: 150,
              ),
              Image.asset(
                R.drawable.img1.pokedexLogo,
                height: 150,
                width: 350,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
