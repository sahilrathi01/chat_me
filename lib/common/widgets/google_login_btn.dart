import 'package:chat_me/common/constants/images.dart';
import 'package:chat_me/common/utils/spacer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          minimumSize: MaterialStateProperty.all(
            Size.fromHeight(5.h),
          ),
          elevation: MaterialStateProperty.all(10),
          shadowColor: MaterialStateProperty.all(Colors.black),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 1.5.h),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1.5.w),
            ),
          ),
          overlayColor: MaterialStateColor.resolveWith(
              (states) => Colors.black.withOpacity(.2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.googleLogo,
              height: 6.w,
              width: 6.w,
              fit: BoxFit.cover,
            ),
            hSpacer(2.5.w),
            Text(
              "Continue With Google",
              style: GoogleFonts.jost(
                fontSize: 12.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            hSpacer(2.5.w),
          ],
        ));
  }
}
