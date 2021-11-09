// part of values;
//
// class Style {
//   static Function fontRegular =
//       ({required Color color, required double size}) => _fontSyle(color, size, FontWeight.w400);
//   static Function fontMedium =
//       ({Color color, double size,TextDecoration decoration}) => _fontSyle(color, size, FontWeight.w500,decoration: decoration);
//
//   static Function fontBold =
//       ({Color color, required double size}) => _fontSyle(color, size, FontWeight.w700);
//
//   static Function roboto =
//       ({Color color, double size, FontWeight fontWeight}) => _robotoSyle(color, size, fontWeight);
//   static Function archivo=({Color color, double size,FontWeight fontWeight,TextDecoration decoration, TextDecorationStyle decorationStyle =TextDecorationStyle.solid }) => _archivoStyle(color, size, fontWeight??FontWeight.normal,decoration??TextDecoration.none,decorationStyle);
//   static TextStyle _robotoSyle(
//       Color color, double size, FontWeight fontWeight) {
//     return _textStyle(FontStyle.normal, color, size, fontWeight);
//   }
//   static Function fontNormal =
//       ({Color color, double size}) => _fontSyle(color, size, FontWeight.normal);
//
//
//   static TextStyle _fontSyle(
//       Color color, double size, FontWeight fontWeight, {TextDecoration decoration}) {
//     return _textStyle(FontStyle.normal, color, size, fontWeight,decoration: decoration);
//   }
//   static TextStyle _archivoStyle(
//       Color color, double size, FontWeight fontWeight,TextDecoration decoration, TextDecorationStyle decorationStyle) {
//     return _textStyleArchivo(FontStyle.normal, color, size, fontWeight,decoration,decorationStyle);
//   }
//   static TextStyle _textStyle(FontStyle fontSyle, Color color, double size, FontWeight fontWeight,{TextDecoration decoration}) {
//     return GoogleFonts.archivo(
//         fontStyle: fontSyle,
//         fontWeight: fontWeight,
//         fontSize: size,
//         decoration: decoration,
//         color: color);
//   }
//
//   static TextStyle _textStyleArchivo(FontStyle fontSyle, Color color, double size, FontWeight fontWeight,TextDecoration decoration,TextDecorationStyle decorationStyle) {
//     return GoogleFonts.archivo(
//         fontStyle: fontSyle,
//         fontWeight: fontWeight,
//         decoration: decoration??TextDecoration.none,
//         fontSize: size,
//         decorationStyle: decorationStyle??TextDecorationStyle.solid,
//         decorationThickness: 2,
//
//         color: color);
//   }
//
//
//
//
// }
//
//
