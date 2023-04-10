import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:assignment_01_cipherschools/Screens/Home_Screen/widgets/profilesImage.dart';
import 'package:flutter/material.dart%20';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

AppBar appBar = AppBar(
  shadowColor: Colors.black12,
  backgroundColor: Colors.white,
  title: const Text(
    'CipherSchools',
    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
  ),
  leadingWidth: 50,
  leading: Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Image.asset(
      'assets/images/main_logo.png',
    ),
  ),
  actions: <Widget>[
    IconButton(
      icon: const Icon(
        Icons.filter_list,
        color: Colors.black,
        size: 30,
      ),
      onPressed: () {
        // Perform search action
      },
    ),
  ],
);

Widget discord = Container(
  width: double.infinity,
  color: const Color(0xff353A42),
  child: Padding(
    padding: const EdgeInsets.only(left: 20, top: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RichText(
          textAlign: TextAlign.left,
          text: const TextSpan(
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
              letterSpacing: .6,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Join our community on',
              ),
              TextSpan(
                text: ' Discord',
                style: TextStyle(
                  color: Color(0xff525DC6),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Come together and make a difference!Connect and grow with our Discord community!Join our community for an interactive learning experience!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: .6,
          ),
        ),
        const SizedBox(height: 50),
        Image.asset('assets/images/discord.png'),
      ],
    ),
  ),
);

Widget title = RichText(
  textAlign: TextAlign.center,
  text: const TextSpan(
    style: TextStyle(
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    children: <TextSpan>[
      TextSpan(
        text: 'Welcome to',
      ),
      TextSpan(
        text: ' the Future',
        style: TextStyle(
          color: Colors.orange,
        ),
      ),
      TextSpan(
        text: ' of Learning!',
      ),
    ],
  ),
);

Widget subTitle = Column(
  children: [
    const Text(
      'Start Learning by best creators for',
      style: TextStyle(
        color: Colors.black54,
        fontSize: 23,
      ),
      textAlign: TextAlign.center,
    ),
    const SizedBox(height: 10),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 25.0,
            color: Colors.orange,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'absolutely Free',
                speed: const Duration(milliseconds: 150),
              ),
            ],
            pause: const Duration(seconds: 1),
            displayFullTextOnTap: true,
            repeatForever: true,
            isRepeatingAnimation: true,
            stopPauseOnTap: false,
          ),
        ),
        const Text(
          '|',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 25,
          ),
        ),
      ],
    )
  ],
);

Widget rating = Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0),
  child: Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      const Profiles(),
      Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              '50+',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Mentors',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(width: 15),
      Container(
        color: Colors.black12,
        height: 50,
        width: 2,
      ),
      const SizedBox(width: 15),
      Column(
        children: [
          const Text(
            '4.8/5',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          RatingStars(
            value: 4.8,
            starBuilder: (index, color) => Icon(
              Icons.star_purple500_outlined,
              color: color,
            ),
            starCount: 5,
            starSize: 20,
            maxValue: 5,
            starSpacing: 1,
            maxValueVisibility: false,
            valueLabelVisibility: false,
            starOffColor: const Color(0xffe7e8ea),
            starColor: Colors.orange,
          ),
          const SizedBox(height: 5),
          const Text(
            'Ratings',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 15,
            ),
          ),
        ],
      ),
    ],
  ),
);

Widget startLearningNowButton = Container(
  decoration: BoxDecoration(
    color: Colors.orange,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text(
          'Start Learning Now  ',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Icon(
          Icons.arrow_forward_rounded,
          color: Colors.white,
        )
      ],
    ),
  ),
);
