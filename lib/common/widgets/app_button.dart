import 'package:chat_me/common/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onTap,
    this.title = "title",
    this.createAccount = false,
    this.elevation = true,
    this.isLoading = false,
    this.border = false,
    this.shadowColor = Colors.black,
    this.buttonDisabled = false,
    this.buttonColor = Colors.black,
    this.overlayColor,
    this.borderColor = Colors.black,
    this.titleColor = Colors.white,
    this.postIcon = "none",
  });

  final String title;
  final String postIcon;
  final VoidCallback onTap;
  final bool createAccount;
  final bool elevation;
  final bool border;
  final bool buttonDisabled;
  final bool isLoading;
  final Color buttonColor;
  final Color shadowColor;
  final Color titleColor;
  final Color? overlayColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonDisabled ? null : onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          buttonDisabled ? Colors.grey : buttonColor,
        ),
        minimumSize: MaterialStateProperty.all(
          Size.fromHeight(5.h),
        ),
        elevation: elevation
            ? MaterialStateProperty.all(10)
            : MaterialStateProperty.all(0),
        shadowColor: MaterialStateProperty.all(shadowColor),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(vertical: 1.5.h),
        ),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          side: BorderSide(
            color: border ? borderColor : Colors.transparent,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(1.5.w),
        )),
        overlayColor: MaterialStateColor.resolveWith(
            (states) => overlayColor ?? Colors.white.withOpacity(.2)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isLoading == true
                ? SizedBox(
                    height: 2.h,
                    width: 2.h,
                    child: const CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  )
                : hSpacer(2.h),
            Text(title,
                style: GoogleFonts.jost(
                  fontSize: 12.sp,
                  color: titleColor,
                  fontWeight: FontWeight.bold,
                )),
            hSpacer(2.h),
          ],
        ),
      ),
      // child: Text(
      // title,
      // style: TextStyle(
      //   fontSize: 12.sp,
      //   color: AppColors.appWhite,
      //   fontWeight: FontWeight.bold,
      // ),
      // ),
    );
  }
}
