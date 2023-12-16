import 'package:chat_me/pages/auth/register/bloc/register_events.dart';
import 'package:chat_me/pages/auth/register/bloc/register_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState()) {}
}
