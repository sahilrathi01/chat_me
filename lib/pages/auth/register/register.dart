import 'package:chat_me/common/utils/index.dart';
import 'package:chat_me/common/widgets/app_button.dart';
import 'package:chat_me/common/widgets/app_input.dart';
import 'package:chat_me/common/widgets/or_divider.dart';
import 'package:chat_me/pages/auth/register/bloc/register_blocs.dart';
import 'package:chat_me/pages/auth/register/bloc/register_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'components/register_widget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return Container(
          decoration: Styles.mainContainer,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: buildAppBar(),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vSpacer(5.h),
                    AppInput(
                      tittle: "Email",
                      hintText: "Enter your email...",
                      onChanged: (value) {},
                    ),
                    vSpacer(2.h),
                    AppInput(
                      tittle: "Password",
                      hintText: "Enter your password...",
                      obscureText: true,
                      onChanged: (value) {},
                    ),
                    vSpacer(2.h),
                    AppButton(
                      onTap: () {},
                      title: "Log In",
                    ),
                    vSpacer(2.h),
                    AppButton(
                      onTap: () {},
                      title: "Sign Up",
                      buttonColor: Colors.white,
                      titleColor: Colors.black,
                      elevation: true,
                      shadowColor: Colors.black,
                      overlayColor: Colors.black.withOpacity(.2),
                    ),
                    vSpacer(2.h),
                    forgotPassword(),
                    vSpacer(5.h),
                    const OrDivider(),
                    vSpacer(2.h),
                    buildThirdPartLogin(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
