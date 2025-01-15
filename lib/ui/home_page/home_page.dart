import 'package:flutter/material.dart';
import 'package:gerard/ui/common/widgets/custom_appbar.dart';
import 'package:gerard/ui/common/widgets/footer.dart';

import '../theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    if (size.width < 749) {
      return Scaffold(
          appBar: const CustomAppBar(title: ''),
    drawer: MediaQuery.of(context).size.width <= 750
    ? const CustomDrawer()
        : null,
       body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 25, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo_gerard.png",
                  fit: BoxFit.contain, width: size.width * 0.9),
              const SizedBox(
                height: 35,
              ),
              Text(
                'Qui suis-je',
                style: titleStyleLarge(context),
              ),
              const SizedBox(
                height: 35,
              ),
              Image.asset("assets/images/gerard.jpg"),
              const SizedBox(
                height: 25,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Gerard :",
                    style: textStyleTextAccueil(context),
                  )),
              Text(
                "Professeur de judo, ceinture noire 6e dan, titulaire d'un BPJPS, diplômé en yoga (D.U), coach sportif a domicile, et éducatuer sport-santé certifié, je mets mes compétence à votre service pour concevoir un programme personnalisé. Que ce soit en presentiel ou à distence, je vous accompagne pour entretenir votre forme physique, améliorer votre mobilité et atteindre vos objectifs grace à des activités Regulières , Adaptées, Sécurisées et Progréssives (RASP- selon la recommandation de l'OMS).",
                style: textStyleText(context),
              ),
              const SizedBox(height: 55,),
              const Footer()
            ],
          ),
        ),
       )
      );
    } else {
      return Scaffold(
        appBar: const CustomAppBar(title: ''),

    body:
    SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo_gerard.png",
                fit: BoxFit.contain, width: size.width * 0.3),
            const SizedBox(
              height: 35,
            ),
            Text(
              'Qui suis-je',
              style: titleStyleLarge(context),
            ),
            const SizedBox(
              height: 35,
            ),
            Image.asset("assets/images/gerard.jpg",
            fit: BoxFit.contain, width: size.width * 0.3,),
            const SizedBox(
              height: 25,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Gerard :",
                  style: textStyleTextAccueil(context).copyWith(fontSize: 22),
                )),
            Text(
              "Professeur de judo, ceinture noire 6e dan, titulaire d'un BPJPS, diplômé en yoga (D.U), coach sportif a domicile, et éducatuer sport-santé certifié, je mets mes compétence à votre service pour concevoir un programme personnalisé. Que ce soit en presentiel ou à distence, je vous accompagne pour entretenir votre forme physique, améliorer votre mobilité et atteindre vos objectifs grace à des activités Regulières , Adaptées, Sécurisées et Progréssives (RASP- selon la recommandation de l'OMS).",
              style: textStyleText(context),
            ),
            const SizedBox(height: 55,),
            const Footer()

          ],
        ),
        ),
    ),
      );

    }
  }
}
