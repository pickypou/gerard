import 'package:flutter/material.dart';
import 'package:gerard/ui/common/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return  SizedBox(
      width: size.width,
      child:const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Header()
        ],
      )
    );
  }
}

