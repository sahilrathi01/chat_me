// ignore_for_file: must_be_immutable

import 'package:chat_me/common/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    super.key,
    // required this.focusNode,
    this.valueKey = "",
    this.hintText = "",
    this.textInputType = TextInputType.text,
    this.textInputAction,
    this.textEditingController,
    this.validator,
    this.onSaved,
    this.inputFormatters,
    this.onTap,
    this.onChanged,
    this.readOnly = false,
    this.isSuffix = false,
    this.autoFocus = false,
    this.obscureText = false,
    this.maxLines = 1,
    this.prefixIcon,
    this.borderRadius,
    this.tittle,
    this.mainContext,
    this.error,
    this.suffixIcon,
    this.maxLength,
  });
  final String valueKey;
  final String hintText;
  final double? borderRadius;
  final Widget? prefixIcon;
  final String? tittle;
  final TextInputType textInputType;
  final TextInputAction? textInputAction;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final Function()? onTap;
  final bool readOnly;
  final bool obscureText;
  final bool autoFocus;
  final bool isSuffix;
  final String? error;
  final int? maxLines;
  final BuildContext? mainContext;
  final Widget? suffixIcon;
  final int? maxLength;
  // final FocusNode focusNode;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        focusNode.requestFocus();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.tittle != null)
            Column(
              children: [
                Text(
                  " ${widget.tittle!}",
                  style: GoogleFonts.jost(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                vSpacer(.5.h)
              ],
            ),
          TextFormField(
            key: ValueKey(widget.valueKey),
            autocorrect: false,
            focusNode: focusNode,
            autofocus: widget.autoFocus,
            maxLength: widget.maxLength,
            controller: widget.textEditingController,
            textCapitalization: TextCapitalization.none,
            enableSuggestions: false,
            readOnly: widget.readOnly,
            obscureText: widget.obscureText,
            keyboardType: widget.textInputType,
            textInputAction: widget.textInputAction,
            inputFormatters: widget.inputFormatters,
            style: GoogleFonts.jost(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(.7),
            ),
            decoration: InputDecoration(
              counterText: '',
              contentPadding: EdgeInsets.only(
                left: 4.w,
                right: 4.w,
                top: .5.h,
                bottom: .5.h,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.black.withOpacity(.5), width: 1),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 2.w),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.black.withOpacity(.5), width: 1),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 2.w),
              ),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12.sp,
              ),
              errorStyle: TextStyle(
                fontSize: 9.sp,
              ),
              errorBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.black.withOpacity(.5), width: 1),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 2.w),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 2.w),
              ),
              isDense: true,
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              suffixIconColor: Colors.black.withOpacity(.5),
            ),
            maxLines: widget.maxLines,
            validator: widget.validator,
            onSaved: widget.onSaved,
            onTap: widget.onTap,
            onChanged: widget.onChanged,
          ),
        ],
      ),
    );
  }
}
