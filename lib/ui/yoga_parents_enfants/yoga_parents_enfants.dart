import 'package:flutter/material.dart';

import '../common/widgets/custom_appbar.dart';
import '../common/widgets/footer.dart';
import '../theme.dart';

class YogaParentsEnfants extends StatelessWidget {
  const YogaParentsEnfants({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    if (size.width < 749) {
      return Scaffold(
          appBar: const CustomAppBar(title: ''),
          drawer: const CustomDrawer(),

          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Yoga Parents/enfants",
                        style: titleStyleMedium(context).copyWith(fontSize:size.width /10 ),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/yoga_parent_enfant.jpeg"),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    width: double.infinity, // Assure que le parent occupe tout l'espace disponible
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Partager un moment unique et complice avec votre enfant !",
                        style: titleStyleSmall(context).copyWith(fontSize: size.width/10),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Offrez-vous une pause précieuse en famille avec nos cours de yoga parents-enfants, spécialement conçus pour les enfants à partir de 4 ans. A travers des postures ludiques, interactives et accessibles, vous découvrirez une manière douce et joyeuse de renforcer votre lien familial.",
                    style: textStyleText(context),
                  ),
                  Text("Ces séances sont l'occasion idéale de favoriser l'épanouissement de votre enfant tout en partageant des instants de bien-être, de sérénité. Ensemble, explorez un univers où rire, détente et complicité se melent harmonieusement.",
                  style: textStyleText(context),),
                  Text("Rejoignez-nous pour créer des souvenirs inoubliables avec votre petit trésor !", style: textStyleText(context),),
                  const SizedBox(height: 35,),
                  Text(
                    "Les cours de Yoga parents/enfants ont lieu tout les mercredis de 09h30 à 11h30",
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
                        "Yoga Parents Enfants",
                        style: titleStyleMedium(context),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/yoga_parent_enfant.jpeg",
                    fit: BoxFit.contain, width: size.width * 0.3,),
                  const SizedBox(
                    height: 35,
                  ),
                  Text("Partager un moment unique et complice avec votre enfant !",
                    style: titleStyleSmall(context),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Offrez-vous une pause précieuse en famille avec nos cours de yoga parents-enfants, spécialement conçus pour les enfants à partir de 4 ans. A travers des postures ludiques, interactives et accessibles, vous découvrirez une manière douce et joyeuse de renforcer votre lien familial.",
                    style: textStyleText(context),
                  ),
                  Text("Ces séances sont l'occasion idéale de favoriser l'épanouissement de votre enfant tout en partageant des instants de bien-être, de sérénité. Ensemble, explorez un univers où rire, détente et complicité se melent harmonieusement.",
                    style: textStyleText(context),),
                  Text("Rejoignez-nous pour créer des souvenirs inoubliables avec votre petit trésor !", style: textStyleText(context),),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Les cours de Yoga parents/enfants ont lieu tout les mercredis de 09h30 à 11h00",
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
