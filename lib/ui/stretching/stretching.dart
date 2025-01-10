import 'package:flutter/material.dart';

import '../common/widgets/custom_appbar.dart';
import '../common/widgets/footer.dart';
import '../theme.dart';

class Stretching extends StatelessWidget {
  const Stretching({super.key});

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
                        "Stretching",
                        style: titleStyleMedium(context),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/stretching.jpg"),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Retrouvez votre souplesse et votre bien-être grâce au stretching, une discipline douce et accessible à tous. En travailant sur les muscles profonds, le stretching combine des étirements progressifs et des contractions isométriques pour renforcer le corps tout en gagnant en amplitude de mouvement.",
                    style: textStyleText(context),
                  ),
                  Text(
                      "Que vous soyez sportif ou débutant, en recherche de relaxation ou d'amélioration de vos performances, le stretching s'adapte à vos besoins et vous offre un moment de bien-être essentiel dans votre quotidien. Prenez le temps d'étiré , de relacher et de renforcer votre corps pour retrouver équillibre et sénérité.",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text("Les cours de Yoga ont lieu tout les lundi à 14h00 / vendredi à 19h00", style: textStyleText(context),),
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
                  Image.asset("assets/images/gim.png"),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Vous souffrez d'une affection longue durée (ALD) et vous avez arrété toute activité phisique depuis un certain temps? Vous souhaitez reprendre en douceur? Redécouvrez votre mobilité, votre souplesse et votre force grace à des exercise adaptés, réalisés sur chaise ou au sol. Ces activités incluent l'utilisationde marteriel léger (poids, elastique, vélo, swiss ball, power plate) ou simplement le poids de votre corps. Offrez à votre corps une reprise progressive et bienveillante pour retrouver vitalité et bien-être.",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text("Le cours de Gym Douce a lieu tout les mercredi à 14h00", style: textStyleText(context),),
                  const SizedBox(height: 55,),
                  const Footer()
                ],
              ),
            ),
          ));
    }
  }
}
