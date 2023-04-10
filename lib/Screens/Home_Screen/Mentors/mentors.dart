import 'package:assignment_01_cipherschools/Screens/Home_Screen/Mentors/mentors_list.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

Widget animatedMentorsCard = SizedBox(
  height: 350,
  child: Swiper(
    layout: SwiperLayout.DEFAULT,
    autoplay: true,
    itemCount: mentorsList.length,
    viewportFraction: .56,
    scale: 1,
    fade: 1,
    duration: 700,
    customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
      ..addTranslate([
        const Offset(-200.0, -10.0),
        const Offset(0.0, 0.0),
        const Offset(370.0, -40.0),
      ]),
    itemBuilder: (context, index) {
      return Column(
        children: [
          SizedBox(
            height: 230,
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 130,
                        width: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xff353a42),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          mentorsList[index].image,
                          fit: BoxFit.contain,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Text(
            mentorsList[index].name,
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            mentorsList[index].job,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      );
    },
  ),
);
