import 'package:flutter/material.dart';
import 'package:gerard/ui/common/widgets/footer.dart';
import 'package:gerard/ui/theme.dart';

import '../common/widgets/custom_appbar.dart';

class GymDouce extends StatelessWidget {
  const GymDouce({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    if (size.width < 749) {
      return Scaffold(
          appBar: const CustomAppBar(title: ''),
          drawer: MediaQuery.of(context).size.width <= 745
              ? const CustomDrawer()
              : null,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Gym douce",
                        style: titleStyleMedium(context),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/gim.png"),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Vous souffrez d'une affection longue durée (ALD) et vous avez arrêté toutes activités physiques depuis un certain temps ? Vous souhaitez reprendre en douceur ? Re-découvrez votre mobilité, votre souplesse et votre force grace à des exercices adaptés, réalisés sur chaise ou au sol. Ces activités incluent l'utilisation de matériel léger (poids, elastique, vélo, swiss ball, power plate) ou simplement le poids de votre corps. Offrez à votre corps une reprise progressive et bienveillante pour retrouver vitalité et bien-être.",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text("Le cours de Gym Douce a lieu tout les mercredis de 14h00 à 15h00", style: textStyleText(context),),
                  const SizedBox(height: 55,),
                  const Footer()
                ],
              ),
            ),
          ));
    } else {
      return Scaffold(
          appBar: const CustomAppBar(title: ''),
          drawer: MediaQuery.of(context).size.width <= 749
              ? const CustomDrawer()
              : null,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Gym douce",
                        style: titleStyleMedium(context),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/gim.png",
                    fit: BoxFit.contain, width: size.width * 0.3,),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Vous souffrez d'une affection longue durée (ALD) et vous avez arrêté toutes activités physiques depuis un certain temps ? Vous souhaitez reprendre en douceur ? Re-découvrez votre mobilité, votre souplesse et votre force grace à des exercices adaptés, réalisés sur chaise ou au sol. Ces activités incluent l'utilisation de matériel léger (poids, élastique, vélo, swiss ball, power plate) ou simplement le poids de votre corps. Offrez à votre corps une reprise progressive et bienveillante pour retrouver vitalité et bien-être.",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text("Le cours de Gym Douce a lieu tout les mercredis de 14h00 à 15h00", style: textStyleText(context),),
                  const SizedBox(height: 55,),
                  const Footer()
                ],
              ),
            ),
          ));
    }
  }
}
