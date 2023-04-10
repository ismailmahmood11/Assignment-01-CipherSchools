import 'package:assignment_01_cipherschools/Screens/Home_Screen/Feed_Back/feed_back.dart';
import 'package:assignment_01_cipherschools/Screens/Home_Screen/ForStudentsCard/for_students_card.dart';
import 'package:assignment_01_cipherschools/Screens/Home_Screen/ForStudentsCard/for_students_card_list.dart';
import 'package:assignment_01_cipherschools/Screens/Home_Screen/Mentors/mentors.dart';
import 'package:assignment_01_cipherschools/Screens/Home_Screen/widgets/courses.dart';
import 'package:assignment_01_cipherschools/Screens/Home_Screen/widgets/filter.dart';
import 'package:assignment_01_cipherschools/Screens/Home_Screen/widgets/number_animation.dart';
import 'package:assignment_01_cipherschools/Screens/Home_Screen/widgets/widgets.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart ';
import '../Animated_Swiper/animated_swiper.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80),
            title,
            const SizedBox(height: 50),
            subTitle,
            const SizedBox(height: 40),
            rating,
            const SizedBox(height: 70),
            startLearningNowButton,
            const SizedBox(height: 70),
            const AnimatedSwiper(),
            const SizedBox(height: 70),
            const AnimatedNumbers(),
            ForStudentsCard(
              image: forStudentsList[0].image,
              subTitle: forStudentsList[0].subTitle,
              title: forStudentsList[0].title,
              button: forStudentsList[0].button,
            ),
            ForStudentsCard(
              image: forStudentsList[1].image,
              subTitle: forStudentsList[1].subTitle,
              title: forStudentsList[1].title,
              button: forStudentsList[1].button,
            ),
            const SizedBox(height: 70),
            feedBack,
            const SizedBox(height: 70),
            const Text(
              'Bests are here',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                letterSpacing: .7,
              ),
            ),
            const SizedBox(height: 30),
            filter,
            const SizedBox(height: 40),
            courses,
            const SizedBox(height: 70),
            const Text(
              'Out Expert Mentors',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                letterSpacing: .7,
              ),
            ),
            const SizedBox(height: 20),
            animatedMentorsCard,
            const SizedBox(height: 10),
            discord,
          ],
        ),
      ),
    );
  }
}
