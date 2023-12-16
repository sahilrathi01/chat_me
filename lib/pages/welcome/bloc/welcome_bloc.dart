import 'package:chat_me/pages/welcome/bloc/welcome_event.dart';
import 'package:chat_me/pages/welcome/bloc/welcome_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelComeBloc extends Bloc<WelComeEvent, WelComeState> {
  WelComeBloc() : super(WelComeState()) {
    on<WelComeEvent>((event, emit) {
      emit(WelComeState(page: state.page));
    });
  }
}
