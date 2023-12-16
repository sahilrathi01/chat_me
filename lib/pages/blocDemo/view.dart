import 'package:chat_me/pages/blocDemo/bloc.dart';
import 'package:chat_me/pages/blocDemo/event.dart';
import 'package:chat_me/pages/blocDemo/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocDemo extends StatelessWidget {
  const BlocDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("title"),
        ),
        body: Center(child: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  "${BlocProvider.of<AppBloc>(context).state.counter}",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            );
          },
        )),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () =>
                  BlocProvider.of<AppBloc>(context).add(Decrement()),
              tooltip: 'Decrement',
              child: const Icon(Icons.minimize),
            ),
            FloatingActionButton(
              onPressed: () =>
                  BlocProvider.of<AppBloc>(context).add(Increment()),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ));
  }
}
