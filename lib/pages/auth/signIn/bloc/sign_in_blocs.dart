import 'package:chat_me/pages/auth/signIn/bloc/sign_in_events.dart';
import 'package:chat_me/pages/auth/signIn/bloc/sign_in_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState()) {
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }

  void _emailEvent(EmailEvent event, Emitter<SignInState> emit) {
    // print("email== ${event.email}");
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit) {
    // print("password== ${event.password}");
    emit(state.copyWith(password: event.password));
  }
}
