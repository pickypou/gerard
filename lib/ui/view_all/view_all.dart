import 'package:flutter/material.dart';
import 'package:gerard/ui/home_page/home_page.dart';
import 'package:gerard/ui/theme.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        height: size.height,
        color: theme.primaryColor,
        child:  const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: HomePage(),

            )
          ],
        ),
      ),
    );
  }
}
