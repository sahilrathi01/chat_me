import 'package:chat_me/pages/blocDemo/bloc.dart';
import 'package:chat_me/pages/signIn/sign_in.dart';
import 'package:chat_me/pages/welcome/bloc/welcome_bloc.dart';
import 'package:chat_me/pages/welcome/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (contex) => WelComeBloc(),
        ),
        BlocProvider(
          create: (contex) => AppBloc(),
        ),
      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
            ),
          ),
          home: const WelCome(),
          routes: {
            "welCome": (context) => const WelCome(),
            "signIn": (context) => const SignIn(),
          },
        );
      }),
    );
  }
}
