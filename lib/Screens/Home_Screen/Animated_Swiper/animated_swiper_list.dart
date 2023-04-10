import 'package:flutter/material.dart';

class AnimatedSwiperListClass {
  AnimatedSwiperListClass({
    required this.icon,
    required this.title,
    required this.subTitle,
  });
  String title;
  String subTitle;
  // ignore: prefer_typing_uninitialized_variables
  var icon;
}

List<AnimatedSwiperListClass> animatedSwiperList = [
  AnimatedSwiperListClass(
      icon: Icons.motion_photos_on_outlined,
      title: 'Earn\nCipherPoints',
      subTitle: 'Earn exclusive rewards by developing  your skills with us!'),
  AnimatedSwiperListClass(
      icon: Icons.content_paste_search_sharp,
      title: 'Q-rated content',
      subTitle: 'Unlock quality content with our Q-rated content!'),
  AnimatedSwiperListClass(
      icon: Icons.insert_chart_outlined_rounded,
      title: 'Projects',
      subTitle:
          'get hte hands-on experience with real-time projects guided by expert mentors!'),
  AnimatedSwiperListClass(
      icon: Icons.class_outlined,
      title: 'Mentors',
      subTitle:
          'start learning from the mentors coming from giant corporations like Microsoft, google, Amazon, Paypal, etc!'),
];
