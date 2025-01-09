import 'package:flutter/material.dart';
import 'package:gerard/ui/theme.dart';

import '../common/widgets/custom_appbar.dart';

class GymDouce extends StatelessWidget {
  const GymDouce({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return  Scaffold(
        appBar: const CustomAppBar(title: ''),
    drawer: MediaQuery.of(context).size.width <= 749
    ? const CustomDrawer()
        : null,
    body:   SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child:   Text("Gym douce",style: titleStyleMedium(context),)
          ),
          const SizedBox(height: 35,),
          Image.asset("assets/images/gym.png",
              fit: BoxFit.contain, width: size.width * 0.4),


        ],
      ),
      ),
    )
    );
  }
}
