import 'package:chat_me/common/utils/spacer.dart';
import 'package:chat_me/common/widgets/apple_login_btn.dart';
import 'package:chat_me/common/widgets/common_widget.dart';
import 'package:chat_me/common/widgets/fb_login_btn.dart';
import 'package:chat_me/common/widgets/google_login_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Text(
      "Log In",
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

Widget forgotPassword() {
  return InkWell(
    borderRadius: BorderRadius.circular(10),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: CommonWidget.apptext(
        "Forgot password?",
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.underline,
        decorationThickness: 2,
      ),
    ),
    onTap: () {},
  );
}

Widget buildThirdPartLogin(BuildContext context) {
  return Column(
    children: [
      AppleLoginButton(onTap: () {}),
      vSpacer(2.h),
      GoogleLoginButton(onTap: () {}),
      vSpacer(2.h),
      FbLoginButton(onTap: () {}),
    ],
  );
}
