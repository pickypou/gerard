import 'package:flutter/material.dart';
import 'package:gerard/core/utils/calcul_font_size.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme = ThemeData(
  primaryColor: const Color(0xFFFAF6F1), // Couleur primaire
  scaffoldBackgroundColor: const Color(
      0xFFFAF6F1), // Couleur de fond par défaut (utilise primaryColor ou autre)
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF027c8e),
    onPrimary: Color(0xFF614394),
    secondary: Color(0xFFf9b233),
    onSecondary: Color(0xFFD7BFAD),
    error: Color(0xFF000000),
    onError: Color(0xFFFFFFFF),
    surface: Color(  0xFFFAF6F1),
    onSurface: Color(0xFFffffff),
  ),
);





TextStyle titleStyle(BuildContext context) {
  Size size = MediaQuery.sizeOf(context);
  double titlefont = size.width / 11;
  return TextStyle(
    fontSize: titlefont,
    color: theme.colorScheme.primary,
    fontFamily: "Roboto",
    decoration: TextDecoration.none,
  );
}

TextStyle titleStyleLarge(BuildContext context) {
  return TextStyle(
    fontSize: calculateTitleFontSize(context),
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.primary,
    fontFamily: "Autography",
    decoration: TextDecoration.none,
  );

}

TextStyle titleStyleMedium(BuildContext context) {
  return TextStyle(
    fontSize: calculateTitleFontSize(context),
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.primary,
    fontFamily: "Autography",
    decoration: TextDecoration.none,
  );
}

TextStyle titleStyleSmall(BuildContext context) {
  return TextStyle(
    fontSize: calculateTitleFontSize(context),
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.primary,
    fontFamily: "Autography", // Police Amable pour les grands titres
    decoration: TextDecoration.none,
  );
}


TextStyle textStyleText(BuildContext context) {
  return
    GoogleFonts.montserrat().copyWith(
      fontSize: calculateFontSize(context),
      color: Theme.of(context).colorScheme.onPrimary,
      decoration: TextDecoration.none,
    );
}



TextStyle textStyleTextAccueil(BuildContext context) {
  Size size = MediaQuery.sizeOf(context);
  double textFontSize = size.width / 20;
  return  GoogleFonts.montserrat().copyWith(
    fontSize: textFontSize,
    color: Theme.of(context).colorScheme.primary,
    decoration: TextDecoration.none,
  );
}

TextStyle textStyleTextAppBar(BuildContext context) {
  Size size = MediaQuery.sizeOf(context);
  double textFontSize = size.width / 88;
  return
    GoogleFonts.montserrat().copyWith(
      fontSize: textFontSize,
      color: Theme.of(context).colorScheme.secondary,
      decoration: TextDecoration.none,
    );
}

TextStyle? textStyleInput(BuildContext context, String inputText) {
  int baseFontSize = 15;
  double textFontSize =
  inputText.length > 20 ? baseFontSize - 1.2 : baseFontSize.toDouble();

  return  GoogleFonts.montserrat().copyWith(
    fontSize: textFontSize,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.onPrimary,
    decoration: TextDecoration.none,
  );
}