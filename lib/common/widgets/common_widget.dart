import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CommonWidget {
  static Widget apptext(
    text, {
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    TextStyle? style,
    Color? color,
    double? fontSize,
    GestureTapCallback? ontap,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    double? decorationThickness,
  }) {
    return GestureDetector(
      onTap: ontap,
      child: AutoSizeText(
        text,
        overflow: overflow,
        maxLines: maxLines,
        textAlign: textAlign,
        style: style ??
            GoogleFonts.jost(
              color: color ?? Colors.black,
              fontSize: fontSize ?? 13.sp,
              fontWeight: fontWeight ?? FontWeight.w400,
              decoration: decoration,
              decorationThickness: decorationThickness,
            ),
      ),
    );
  }
}
