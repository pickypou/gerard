import 'package:flutter/material.dart';

import '../common/widgets/custom_appbar.dart';
import '../common/widgets/footer.dart';
import '../theme.dart';

class CoachingIndividuel extends StatelessWidget {
  const CoachingIndividuel({super.key});

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
                        "Coaching individuel",
                        style: titleStyleMedium(context),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/yoga.png",
                    fit: BoxFit.contain, width: size.width * 0.8,),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Vous souhaiter choisir librement votre activité et vos horaires ?je peux intervenir directement chez vous, vous accueillir au Cocon ou encore organiser des séances en visio. Besoin de vous remuscler ? Envie de retrouver de la mobilité après une opération ? Vous aspirze à perdre du poids ou à mieux gérer votre condition phisique ? Que vous souffriez de troubles musculo-squelettiques, d'obésité, de diabète de type 2, de trouble respiratoires ou encore de stress chronique excessif, exposez-moi votre situation. Je conçois pour vous un programme entièrement personnalisé, adapté a vos besoin et objectifs.",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Le coaching individuel ce fait uniquement sur rendez-vous ou à domicile",
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
                        "Coaching individuel",
                        style: titleStyleMedium(context),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/yoga.png",
                    fit: BoxFit.contain, width: size.width * 0.3,),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Vous souhaiter choisir librement votre activité et vos horaires ? je peux intervenir directement chez vous, vous accueillir au Cocon ou encore organiser des séances en visio. Besoin de vous remuscler ? Envie de retrouver de la mobilité après une opération ? Vous aspirze à perdre du poids ou à mieux gérer votre condition phisique ? Que vous souffriez de troubles musculo-squelettiques, d'obésité, de diabète de type 2, de trouble respiratoires ou encore de stress chronique excessif, exposez-moi votre situation. Je conçois pour vous un programme entièrement personnalisé, adapté a vos besoin et objectifs.",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Le coaching individuel ce fait uniquement sur rendez-vous ou à domicile",
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
