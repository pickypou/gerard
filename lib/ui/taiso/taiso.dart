import 'package:flutter/material.dart';
import 'package:gerard/ui/video_mp4/video_taiso.dart';

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
                        "Cela signifie ",
                        style: titleStyleSmall(context).copyWith(fontSize: size.width/10),
                      ),
                    ),
                  ),
                  Text("\"préparation du corps en japonais\"",  style: titleStyleSmall(context).copyWith(fontSize: size.width/13),),

                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Méthode japonaise de renforcement musculaire de l'ensemble de votre corps de la tête jusqu'au petit orteil. 15 minutes d'échauffement, 30 minutes de renforcement musculaire sur les grands groupes, les jambes, abdos, fessiers, dos etc... suivi d'un temps calme : association d'étirement et de relaxation.",
                    style: textStyleText(context),
                  ),

                  const SizedBox(height: 35,),
                  Text(
                    "Les cours de Taïso ont lieu tous les mardis à 19h00 à 20h30 et les samedis à 10h00 à 11h30",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  const VideoMp4View(),
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
                        "Cela signifie \"préparation du corps en japonais\"",
                        style: titleStyleSmall(context)),
                      ),
                    ),

                  Text(
                    "Méthode japonaise de renforcement musculaire de l'ensemble de votre corps de la tête jusqu'au petit orteil. 15 minutes d'échauffement, 30 minutes de renforcement musculaire sur les grands groupes, les jambes, abdos, fessiers, dos etc... suivi d'un temps calme : association d'étirement et de relaxation.",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 35,
                  ),

                  Text(
                    "Les cours de Taïso ont lieu tous les mardis à 19h00 à 20h30 et les samedis à 10h00 à 11h30",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  const VideoMp4View(),
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

