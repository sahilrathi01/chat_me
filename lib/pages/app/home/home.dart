import 'package:chat_me/common/utils/style.dart';
import 'package:flutter/material.dart';

import 'home_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Styles.mainContainer,
      child: Scaffold(
        backgroundColor: Styles.mainContainer.color,
        body: CustomScrollView(
          slivers: [
            buildSliverAppBar(),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 1, (_, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      buildSearchBar(),
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
