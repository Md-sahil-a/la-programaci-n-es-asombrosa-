import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter intro",
      theme: ThemeData(
          primarySwatch: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Introscreen(),
    );
  }
}

class Introscreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Be a dreamer',
      subTitle: 'Do whatever you want to do',
      imageUrl: 'images/think.png',
    ),
    Introduction(
      title: 'Be a dreamer',
      subTitle: 'Do whatever you want to do',
      imageUrl: 'images/and.png',
    ),
    Introduction(
      title: 'Made by SA',
      subTitle: 'Made with ❤',
      imageUrl: 'images/do.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NEXT()));
      },
    );
  }
}
