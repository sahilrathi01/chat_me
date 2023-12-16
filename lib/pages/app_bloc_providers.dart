import 'package:chat_me/pages/auth/signIn/bloc/sign_in_blocs.dart';
import 'package:chat_me/pages/auth/welcome/bloc/welcome_bloc.dart';
import 'package:chat_me/pages/blocDemo/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppblocProvider {
  static get allBlocProvider => [
        BlocProvider(
          lazy: false,
          create: (contex) => WelComeBloc(),
        ),
        BlocProvider(
          lazy: false,
          create: (contex) => AppBloc(),
        ),
        BlocProvider(
          create: (contex) => SignInBloc(),
        ),
      ];
}
