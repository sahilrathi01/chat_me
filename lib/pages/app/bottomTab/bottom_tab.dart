import 'package:chat_me/common/constants/images.dart';
import 'package:chat_me/common/utils/index.dart';
import 'package:chat_me/pages/app/bottomTab/bottom_tab_widget.dart';
import 'package:chat_me/pages/app/home/home.dart';

import 'package:flutter/material.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({super.key});

  @override
  State<BottomTab> createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Styles.mainContainer,
      child: Scaffold(
        body: Home(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Image.asset(
                Images.home,
                height: 20,
                width: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Image.asset(
                Images.home,
                height: 20,
                width: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
