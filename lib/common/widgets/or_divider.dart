import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:auto_size_text/auto_size_text.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 28.w,
          child: Divider(
            thickness: 1,
            color: Colors.grey.shade500,
          ),
        ),
        const Spacer(),
        Container(
          alignment: Alignment.center,
          child: AutoSizeText(
            'OR Login with',
            style: GoogleFonts.jost(
              color: Colors.grey,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 28.w,
          child: Divider(
            thickness: 1,
            color: Colors.black.withOpacity(.4),
          ),
        ),
      ],
    );
  }
}
