import 'package:chat_me/common/utils/index.dart';
import 'package:chat_me/common/widgets/app_button.dart';
import 'package:chat_me/common/widgets/app_input.dart';
import 'package:chat_me/common/widgets/or_divider.dart';
import 'package:chat_me/pages/auth/signIn/bloc/sign_in_blocs.dart';
import 'package:chat_me/pages/auth/signIn/bloc/sign_in_events.dart';
import 'package:chat_me/pages/auth/signIn/bloc/sign_in_states.dart';
import 'package:chat_me/pages/auth/signIn/components/sign_in_widget.dart';
import 'package:chat_me/pages/auth/signIn/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
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
                      onChanged: (value) {
                        context.read<SignInBloc>().add(EmailEvent(value));
                      },
                    ),
                    vSpacer(2.h),
                    AppInput(
                      tittle: "Password",
                      hintText: "Enter your password...",
                      obscureText: true,
                      onChanged: (value) {
                        context.read<SignInBloc>().add(PasswordEvent(value));
                      },
                    ),
                    vSpacer(2.h),
                    AppButton(
                      onTap: () {
                        SingInController(context: context)
                            .handelSignIn("email");
                      },
                      title: "Log In",
                    ),
                    vSpacer(2.h),
                    forgotPassword(),
                    vSpacer(5.h),
                    const OrDivider(),
                    vSpacer(2.h),
                    buildThirdPartLogin(context),
                    vSpacer(2.h),
                    buildRegisterText(context),
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
