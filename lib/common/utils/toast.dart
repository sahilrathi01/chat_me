import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

toastInfo({
  required String msg,
  Color backgroundColor = Colors.black,
  Color textColors = Colors.white,
}) {
  return Fluttertoast.showToast(
    msg: msg,
    backgroundColor: backgroundColor,
    textColor: textColors,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 2,
    fontSize: 10.sp,
  );
}
