import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    if (size.width < 749) {
      return Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo_gerard.png",fit: BoxFit.cover,)
          ],
        ),
      );
    }else {
      return const Placeholder();
    }
    
  }
}
