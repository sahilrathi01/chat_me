import 'package:chat_me/common/utils/index.dart';
import 'package:chat_me/common/widgets/app_button.dart';
import 'package:chat_me/common/widgets/app_input.dart';
import 'package:chat_me/pages/auth/register/bloc/register_blocs.dart';
import 'package:chat_me/pages/auth/register/bloc/register_events.dart';
import 'package:chat_me/pages/auth/register/bloc/register_states.dart';
import 'package:chat_me/pages/auth/register/register_controller.dart';
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
                      tittle: 'User name',
                      hintText: "user name...",
                      onChanged: (value) {
                        context.read<RegisterBloc>().add(UserNameEvent(value));
                      },
                    ),
                    vSpacer(2.h),
                    AppInput(
                      tittle: "Email",
                      hintText: "xyz@gmail.com",
                      onChanged: (value) {
                        context.read<RegisterBloc>().add(EmailEvent(value));
                      },
                    ),
                    vSpacer(2.h),
                    AppInput(
                      tittle: "Password",
                      hintText: "password",
                      // obscureText: true,
                      onChanged: (value) {
                        context.read<RegisterBloc>().add(PasswordEvent(value));
                      },
                    ),
                    vSpacer(2.h),
                    AppInput(
                      tittle: "Confirm password",
                      hintText: "password",
                      // obscureText: true,
                      onChanged: (value) {
                        context
                            .read<RegisterBloc>()
                            .add(RePasswordEvent(value));
                      },
                    ),
                    vSpacer(5.h),
                    AppButton(
                      onTap: () {
                        SingInController(context: context).handelRegister();
                      },
                      title: "Register",
                    ),
                    vSpacer(5.h),
                    buildLoginText(context),
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
