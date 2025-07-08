import 'package:flutter/material.dart';
import 'package:gerard/ui/common/widgets/footer.dart';

import '../common/widgets/custom_appbar.dart';
import '../theme.dart';

class TarifsHoraires extends StatelessWidget {
  const TarifsHoraires({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: ''),
        drawer: const CustomDrawer(),

        body: SingleChildScrollView(
    child:
      Center(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Les horaires', style: titleStyleSmall(context),),
              Text('Yoga : lundi de 14h à 15h30 et le vendredi de 19h00 à 20h30.' ,style: textStyleText(context)),
              Text('Yoga  parents/enfants:  mercredi de 9h30 à 10h30.' ,style: textStyleText(context)),
              Text('Gym douce :  mercredi de 14h à 15h.' ,style: textStyleText(context)),
              Text('Stretching : mercredi de 19h à 20h.' ,style: textStyleText(context)),
              Text('Taïso : mardi de 19h à 20h30 et samedi de 10h à 11h30.' ,style: textStyleText(context),),
              Text('Coaching individuel : Uniquement sur rendez-vous. Possibilité d\'intervention à domocile.' ,style: textStyleText(context),),
              Text('Bon à savoir : ' ,style: textStyleText(context),),
              Text('La saison débute le 15 août et se termine le 14 juillet.' ,style: textStyleText(context),),
              Text('Les séances ont lieu toute l\'année, même durant la période de vacances scolaires, sauf les jours fériés. Possibilité de changer de séance en cas d\'indisponibilité ponctuelle.' ,style: textStyleText(context)),
              Text('1ère séance d\'essai gratuite.' ,style: textStyleText(context),),
              const SizedBox(height: 25,),
              Text('Les Tarifs', style: titleStyleSmall(context),),
              Text('La séance 7€.' ,style: textStyleText(context),),
              Text('Le trimestre' ,style: titleStyleSmall(context),),
              Text('1 séance semaine 60€ ; 12 séances soit 5€ la séance.' ,style: textStyleText(context)),
              Text('2 séances semaine 80€ ; 24 séances soit 2.50€ la séance.' ,style: textStyleText(context)),
              Text('L \'année' ,style: titleStyleSmall(context),),
              Text('1 séance semaine 200€ ; 47 séances/année soit 4.25€ la séance.' ,style: textStyleText(context),),
              Text('2 séances semaine 300€ ; 92 séances/année soit 3.26 la séance.' ,style: textStyleText(context),),
              Text('3 séances semaine 350€ ; 139 séances/année soit 0.39€ la séance.' ,style: textStyleText(context),),
              Text('Coaching individuel au Cocon SSBE ; 40€ la séance.' ,style: textStyleText(context),),
              Text('Coaching individuel à domicile (20 KMS) 50€ la séance.' ,style: textStyleText(context),),
              Text('(Possibilité de réduction de 50% en crédit d\'impôt sur la déclaration fiscale service à la personne).' ,style: textStyleText(context),),
              Text('Réduction de 10% pour les provinois (la première année).' ,style: textStyleText(context)),
              const SizedBox(height: 55,),
              const Footer()

            ],
          ),
        )
    )

        )

    );
  }
}