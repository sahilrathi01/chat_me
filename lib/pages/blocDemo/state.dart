class AppState {
  AppState({
    required this.counter,
  });
  int counter;
}

class InitState extends AppState {
  InitState() : super(counter: 0);
}
