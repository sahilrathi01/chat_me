import 'package:chat_me/common/utils/index.dart';
import 'package:chat_me/pages/auth/signIn/bloc/sign_in_blocs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingInController {
  final BuildContext context;
  SingInController({
    required this.context,
  });

  void handelSignIn(String type) async {
    try {
      if (type == "email") {
        final state = context.read<SignInBloc>().state;
        String email = state.email;
        String password = state.password;
        if (email.isEmpty) {
          toastInfo(msg: 'Enter an Email');
          return;
        }
        if (password.isEmpty) {
          toastInfo(msg: 'Enter an password');
          return;
        }
        try {
          final credential =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: email,
            password: password,
          );
          if (credential.user == null) {
            toastInfo(msg: 'user not found');
            return;
          }
          if (!credential.user!.emailVerified) {
            toastInfo(msg: "email not verified");
            return;
          }
          final user = credential.user;

          if (user != null) {
            toastInfo(msg: "we got an user");
          } else {
            toastInfo(msg: "we have error getting user from firebase");
          }
        } on FirebaseAuthException catch (e) {
          debugPrint(e.code);
          if (e.code == "INVALID_LOGIN_CREDENTIALS") {
            toastInfo(msg: "Invalid email or password");
            return;
          }
          if (e.code == "invalid-email") {
            toastInfo(msg: "please enter valid email address");
            return;
          }
          return;
        }
      }
    } catch (e) {
      debugPrint('Main catch $e ');
      toastInfo(msg: 'Main catch');
    }
  }
}
