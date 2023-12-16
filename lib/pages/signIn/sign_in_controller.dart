// import 'dart:html';

// import 'package:chat_me/pages/signIn/bloc/sign_in_blocs.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class SingInController {
//   final BuildContext context;
//   SingInController({
//     required this.context,
//   });

//   void handelSignIn(String type) async {
//     try {
//       if (type == "email") {
//         final state = context.read<SignInBloc>().state;
//         String email = state.email;
//         String password = state.password;
//         if (email.isEmpty) {
//           //
//         }
//         if (password.isEmpty) {
//           //
//         }
//         try {
//           final credential =
//               await FirebaseAuth.instance.signInWithEmailAndPassword(
//             email: email,
//             password: password,
//           );
//           if (credential.user == null) {
//             //
//           }
//           if (!credential.user!.emailVerified) {
//             //
//           }
//           final user = credential.user;

//           if (user != null) {
//             // got an Verified user from firebase
//           } else {
//             // we have error getting user from firebase
//           }
//         } catch (e) {}
//       }
//     } catch (e) {}
//   }
// }
