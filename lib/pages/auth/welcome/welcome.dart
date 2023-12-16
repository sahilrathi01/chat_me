import 'package:chat_me/common/widgets/app_button.dart';
import 'package:chat_me/pages/auth/welcome/bloc/welcome_bloc.dart';
import 'package:chat_me/pages/auth/welcome/bloc/welcome_event.dart';
import 'package:chat_me/pages/auth/welcome/bloc/welcome_state.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class WelCome extends StatefulWidget {
  const WelCome({super.key});

  @override
  State<WelCome> createState() => _WelComeState();
}

class _WelComeState extends State<WelCome> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ChatME',
          style: GoogleFonts.jost(
            fontStyle: FontStyle.normal,
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: BlocBuilder<WelComeBloc, WelComeState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (index) {
                    state.page = index;
                    BlocProvider.of<WelComeBloc>(context).add(WelComeEvent());
                  },
                  itemCount: state.pageList.length,
                  controller: controller,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.w),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 45.h,
                            child: Image.asset(
                              state.pageList[index]['image'],
                            ),
                          ),
                          Text(
                            state.pageList[index]['title'],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jost(
                              fontStyle: FontStyle.normal,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            state.pageList[index]['dec'],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jost(
                              fontStyle: FontStyle.normal,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              DotsIndicator(
                dotsCount: 3,
                decorator: DotsDecorator(
                  activeColor: Colors.black,
                  color: Colors.black.withOpacity(.5),
                ),
                position: state.page,
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom + 2.h,
                  left: 3.w,
                  right: 3.w,
                ),
                child: AppButton(
                  onTap: () {
                    if (state.page < state.pageList.length - 1) {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    } else {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil("signIn", (route) => false);
                    }
                  },
                  title: "Next",
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
