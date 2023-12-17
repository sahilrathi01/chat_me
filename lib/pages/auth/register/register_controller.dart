import 'package:chat_me/common/utils/index.dart';
import 'package:chat_me/pages/auth/register/bloc/register_blocs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingInController {
  final BuildContext context;
  SingInController({
    required this.context,
  });

  void handelRegister() async {
    final state = context.read<RegisterBloc>().state;

    String userName = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;
    if (userName.isEmpty) {
      toastInfo(msg: 'please Enter username');
      return;
    }
    if (email.isEmpty) {
      toastInfo(msg: 'please Enter email');
      return;
    }
    if (password.isEmpty) {
      toastInfo(msg: 'please Enter password ');
      return;
    }
    if (rePassword.isEmpty) {
      toastInfo(msg: 'please confirm your password');
      return;
    }
    if (rePassword != password) {
      toastInfo(msg: 'password not matched');
      return;
    }

    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(userName);
        toastInfo(msg: 'Email verify link sent to $email ');
        // ignore: use_build_context_synchronously
        Navigator.of(context).pop();
      }
    } on FirebaseAuthException catch (e) {
      debugPrint("register FirebaseAuthException =====> $e");
      if (e.code == "weak-password") {
        toastInfo(msg: 'your password is to weak');
      }
      if (e.code == "email-already-in-use") {
        toastInfo(msg: 'provided email is already in use');
      }
      if (e.code == "invalid-email") {
        toastInfo(msg: 'please enter valid email address');
      }
    }
  }
}
