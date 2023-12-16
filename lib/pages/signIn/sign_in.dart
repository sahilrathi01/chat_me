import 'package:chat_me/common/utils/index.dart';
import 'package:chat_me/common/widgets/app_button.dart';
import 'package:chat_me/common/widgets/app_input.dart';
import 'package:chat_me/common/widgets/or_divider.dart';
import 'package:chat_me/pages/signIn/components/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _WelComeState();
}

class _WelComeState extends State<SignIn> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
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
                ),
                vSpacer(2.h),
                AppInput(
                  tittle: "Password",
                  hintText: "Enter your password...",
                  obscureText: true,
                ),
                // AppInput(
                //     obscureText: controller.showPassword.value,
                //     textEditingController:
                //         controller.passwordEditingController,
                //     textInputAction: TextInputAction.done,
                //     textInputType: TextInputType.emailAddress,
                //     suffixIcon: GestureDetector(
                //       child: Icon(
                //         controller.showPassword.value
                //             ? Icons.visibility
                //             : Icons.visibility_off,
                //       ),
                //       onTap: () {
                //         controller.showPassword.value =
                //             !controller.showPassword.value;
                //       },
                //     ),
                //     validator: (text) {
                //       return Validation.passwordValidation(text);
                //     },
                //     onChanged: (p0) {
                //       return controller.signUpFormKey.currentState!
                //           .validate();
                //     },
                // );
                vSpacer(2.h),
                AppButton(
                  onTap: () {},
                  title: "Log In",
                ),
                vSpacer(2.h),
                AppButton(
                  onTap: () {},
                  title: "Sign In",
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
  }
}
