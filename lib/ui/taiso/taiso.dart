import 'package:flutter/material.dart';

import '../common/widgets/custom_appbar.dart';
import '../common/widgets/footer.dart';
import '../theme.dart';


class Taiso extends StatelessWidget {
  const Taiso({super.key});

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
                        "Taîso",
                        style: titleStyleMedium(context).copyWith(fontSize:size.width /10 ),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/taiso.png"),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    width: double.infinity, // Assure que le parent occupe tout l'espace disponible
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Preparation du corps en japonais",
                        style: titleStyleSmall(context).copyWith(fontSize: size.width/10),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Méthode japonaise de renforcement musculaire de l'ensemble de votre corps de la t^te jusqu'au petit orteil. 15 minutes d'échauffement, 30 minutes de de renforcement musculaire sur les grand groupes, les jambes, abdos, fessiers, dos etc... suivi d'un temps calme : association d'étirement et de relaxation.",
                    style: textStyleText(context),
                  ),

                  const SizedBox(height: 35,),
                  Text(
                    "Les cours de Taïso ont lieu tout le mardi à 19h00 et le samedi à 10h00",
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
                        "Taïso",
                        style: titleStyleMedium(context),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/taiso.png",
                    fit: BoxFit.contain, width: size.width * 0.5,),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    width: double.infinity, // Assure que le parent occupe tout l'espace disponible
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Preparation du corps en japonais",
                        style: titleStyleSmall(context)),
                      ),
                    ),

                  Text(
                    "Méthode japonaise de renforcement musculaire de l'ensemble de votre corps de la t^te jusqu'au petit orteil. 15 minutes d'échauffement, 30 minutes de de renforcement musculaire sur les grand groupes, les jambes, abdos, fessiers, dos etc... suivi d'un temps calme : association d'étirement et de relaxation.",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 35,
                  ),

                  Text(
                    "Les cours de Taïso ont lieu tout le mardi à 19h00 et le samedi à 10h00",
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

