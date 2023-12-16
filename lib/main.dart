import 'package:chat_me/pages/app_bloc_providers.dart';

import 'package:chat_me/pages/auth/signIn/sign_in.dart';
import 'package:chat_me/pages/auth/welcome/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint("connecting Firebase.....");
  await Firebase.initializeApp();
  debugPrint("Firebase successfully connected... ");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppblocProvider.allBlocProvider,
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Flutter Demo',
          builder: FToastBuilder(),
          navigatorKey: navigatorKey,
          theme: ThemeData(
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
            ),
          ),
          home: const SignIn(),
          routes: {
            "welCome": (context) => const WelCome(),
            "signIn": (context) => const SignIn(),
          },
        );
      }),
    );
  }
}
