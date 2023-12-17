import 'package:chat_me/common/constants/images.dart';
import 'package:chat_me/common/widgets/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Widget buildSearchBar() {
  return TextField(
    style: GoogleFonts.jost(
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
      color: Colors.black.withOpacity(.7),
    ),
    decoration: InputDecoration(
      counterText: '',
      contentPadding: EdgeInsets.only(
        left: 4.w,
        right: 4.w,
        top: 1.6.h,
        bottom: 1.6.h,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(3.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(3.w),
      ),
      hintText: 'Search...',
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: 15.sp,
      ),
      errorStyle: TextStyle(
        fontSize: 9.sp,
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(3.w),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red, width: 1),
        borderRadius: BorderRadius.circular(3.w),
      ),
      isDense: true,
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      ),
      prefixIcon: Icon(
        Icons.search,
        size: 7.w,
      ),
    ),
  );
}

buildSliverAppBar() {
  return SliverAppBar(
    backgroundColor: Colors.white,
    expandedHeight: 24.h,
    // toolbarHeight: 15.h,
    collapsedHeight: 15.h,
    floating: true,
    pinned: true,
    snap: true,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    centerTitle: true,
    leadingWidth: 15.w,
    // flexibleSpace: FlexibleSpaceBar(
    //   title: CommonWidget.apptext('hello'),
    // ),
    flexibleSpace: Positioned.fill(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(1.h),
                    child: Image.asset(
                      Images.menu,
                      height: 4.w,
                      width: 5.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(1.h),
                    child: Image.asset(
                      Images.headpic,
                      height: 10.w,
                      width: 10.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonWidget.apptext(
                    'Hello 👋',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                  CommonWidget.apptext(
                    'Sahil Rathi',
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
