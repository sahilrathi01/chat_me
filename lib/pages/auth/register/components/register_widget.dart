import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Text(
      "Register",
      style: GoogleFonts.jost(
        fontWeight: FontWeight.w600,
      ),
    ),
    bottom: PreferredSize(
      preferredSize: Size(100.w, .5),
      child: Container(
        height: .5,
        color: Colors.grey.withOpacity(.2),
      ),
    ),
  );
}

Widget buildLoginText(context) {
  return InkWell(
    child: Center(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Already have an account? ',
                  style: GoogleFonts.jost(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: 'Sign In',
                  style: GoogleFonts.jost(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            )),
      ),
    ),
  );
}
