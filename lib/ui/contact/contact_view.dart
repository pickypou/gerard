import 'package:flutter/material.dart';
import 'package:gerard/ui/theme.dart';

import '../common/widgets/custom_appbar.dart';
import 'contact_bien_etre.dart';
import 'contact_le_cocon.dart';
import 'contact_sport_sante.dart';
import 'form-contact.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: const CustomAppBar(title: ''),
        drawer: const CustomDrawer(),
         body: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
         child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nous, Contacter',style: titleStyleSmall(context),
              ),
              const SizedBox(height: 20),
              Flexible(
                fit: FlexFit.loose,
                child: LayoutBuilder(
                  builder: (context, innerConstraints) {
                    if (innerConstraints.maxWidth > 600) {
                      // Version desktop
                      return const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ContactBientEtre(),
                                SizedBox(height: 10),
                                ContactSportSante(),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                FormContact(),
                                SizedBox(height: 10),
                                ContactLeCocon(),
                              ],
                            ),
                          ),
                        ],
                      );
                    } else {
                      // Version mobile
                      return const  Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ContactSportSante(),
                          SizedBox(height: 20),
                          FormContact(),
                          SizedBox(height: 10),
                          ContactLeCocon(),
                        ],
                      );


                    }
                  },
                ),
              ),
            ],
          ),
          )
         )
        );
      }

  }
