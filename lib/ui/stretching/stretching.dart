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
                    "Que vous soyez sportif ou débutant, en recherche de relaxation ou d'amélioration de vos performances, le stretching s'adapte à vos besoins et vous offre un moment de bien-être essentiel dans votre quotidien. Prenez le temps d'étirer, de relacher et de renforcer votre corps pour retrouver équillibre et sénérité.",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text("Le cours de Stretshing a lieu tout les mercredis à 19h00", style: textStyleText(context),),
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
                        "Stretching",
                        style: titleStyleMedium(context),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/stretching.jpg",
                    fit: BoxFit.contain, width: size.width * 0.3,),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Que vous soyez sportif ou débutant, en recherche de relaxation ou d'amélioration de vos performances, le stretching s'adapte à vos besoins et vous offre un moment de bien-être essentiel dans votre quotidien. Prenez le temps d'étirer, de relacher et de renforcer votre corps pour retrouver équillibre et sénérité.",
                    style: textStyleText(context),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text("Le cours de Stretshing a lieu tout les mercredis à 19h00", style: textStyleText(context),),
                  const SizedBox(height: 55,),
                  const Footer()
                ],
              ),
            ),
          ));
    }
  }
}
