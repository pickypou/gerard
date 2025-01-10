import 'package:flutter/material.dart';

import '../common/widgets/custom_appbar.dart';
import '../common/widgets/footer.dart';
import '../theme.dart';

class Yoga extends StatelessWidget {
  const Yoga({super.key});

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
                        "Yoga",
                        style: titleStyleMedium(context),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/yoga.png"),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Que ce soit du hatha yoga, du vinyasa yoga, du yoga nidra ou un yoga traditionnel thérapeutique directement inspiré de l'inde (Kaivalyadhama), chaque pratique vous invite à explorer un travail alliant mobilité, respiration et spiritualité. Ces technique vous guide sur le chemin de la connaissance de soi, dans une société ou l'on vous en demande toujours plus? Lors de mes séances de yoga, je vous propose de faire une pause, un véritable moment de reconnexion à vous-même..",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Les cours de Yoga ont lieu tout les lundi à 14h00 / vendredi à 19h00",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
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
                  Text(
                    "Le cours de Gym Douce a lieu tout les mercredi à 14h00",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  const Footer()
                ],
              ),
            ),
          ));
    }
  }
}
