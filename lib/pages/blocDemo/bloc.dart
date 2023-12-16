import 'package:chat_me/pages/blocDemo/event.dart';
import 'package:chat_me/pages/blocDemo/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(InitState()) {
    on<Increment>((event, emit) {
      emit(AppState(counter: state.counter + 1));
    });
    on<Decrement>((event, emit) {
      emit(AppState(counter: state.counter - 1));
    });
  }
}
