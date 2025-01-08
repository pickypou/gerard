import 'package:flutter/material.dart';
import 'package:gerard/ui/common/widgets/pdf_viewver.dart';
import '../../theme.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Divider(
          color: theme.colorScheme.secondary,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('© 2025 Gérard DUCROCQ - Tous droits réservés',
                  style: textStyleTextWeb(context)
                      .copyWith(fontSize: size.width / 75)),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PDFViewerPage(),
                      ),
                    );
                  },
                  child: Text('Mentions_légales',
                      style: textStyleTextWeb(context)
                          .copyWith(fontSize: size.width / 75)))
            ],
          ),
        ),
      ],
    );
  }
}