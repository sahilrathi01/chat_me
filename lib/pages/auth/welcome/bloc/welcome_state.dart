import 'package:chat_me/common/constants/images.dart';

class WelComeState {
  int page;
  List pageList = [
    {
      "title": "Hello",
      "image": Images.onboarding,
      "dec": "User onboarding platform that brings results",
    },
    {
      "title": "This is title",
      "image": Images.onboarding2,
      "dec": "Trusted by hundreds of clients from start-ups to enterprises",
    },
    {
      "title": "Sahil Rathi",
      "image": Images.onboarding3,
      "dec": "You deserve the best user onboarding tool",
    },
  ];
  WelComeState({this.page = 0});
}
