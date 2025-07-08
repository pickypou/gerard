import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../theme.dart';

class Footer extends StatelessWidget {
  final double? fontSize;
  const Footer({super.key, this.fontSize});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Divider(
          color: theme.colorScheme.secondary,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // ← Ajoutez cette ligne
            children: [
              Flexible( // ← Enveloppez les Text/TextButton dans Flexible
                child: Text(
                  "© 2025 Gérard DUCROCQ tous droits réservés",
                  style: textStyleText(context),
                  overflow: TextOverflow.ellipsis, // ← Optionnel pour éviter les débordements
                ),
              ),
              Flexible(
                child: TextButton(
                    onPressed: () async {
                      final Uri url = Uri.parse('https://ludovicspysschaert.fr/');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url, mode: LaunchMode.externalApplication);
                      } else {
                        // Tu peux afficher une erreur ici
                        throw 'Impossible d’ouvrir l’URL : $url';
                      }
                    },
                    child: Text('création Ludovic SPYSSCHAERT',style: textStyleText(context),
                      overflow: TextOverflow.ellipsis,)),
              ),
              // ↓ Ajoutez un SizedBox pour l'icône
              SizedBox(
                width: 40, // ← Largeur garantie
                child: PopupMenuButton<String>(
                  icon: Icon(Icons.info_outline, color: Colors.black), // Icône noire visible
                  color: Colors.white, // Fond du menu
                  onSelected: (value) {
                    if (value == 'mentions') {
                      launchUrl(Uri.parse('/mentionslegales.html'));
                    } else if (value == 'confidentialite') {
                      launchUrl(Uri.parse('/confidentialite.html'));
                    } else if (value == 'cookies') {
                      launchUrl(Uri.parse('/cookies.html'));
                    }
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem<String>(
                      value: 'mentions',
                      child: Text(
                        'Mentions légales',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'confidentialite',
                      child: Text(
                        'Politique de confidentialité',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'cookies',
                      child: Text(
                        'Politique des cookies',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                )


              ),
            ],
          )
        ),
      ],
    );
  }
}