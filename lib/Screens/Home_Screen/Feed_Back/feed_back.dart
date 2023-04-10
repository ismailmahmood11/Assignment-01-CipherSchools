import 'package:assignment_01_cipherschools/Screens/Home_Screen/Feed_Back/feed_back_list.dart';
import 'package:assignment_01_cipherschools/Screens/Home_Screen/widgets/profilesImage.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

Widget feedBack = Container(
  width: double.infinity,
  color: const Color(0xff353A42),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Students LIVE Feedback',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'We love to read them',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
            letterSpacing: .6,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'feedback is a significant component of our success because it inspires us to get better and meet the expectations of our students.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: .6,
          ),
        ),
        const SizedBox(height: 50),
        FeedBackCard(),
      ],
    ),
  ),
);

class FeedBackCard extends StatelessWidget {
  FeedBackCard({
    super.key,
  });

  Widget star = RatingStars(
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
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450.0,
      child: Swiper(
        layout: SwiperLayout.DEFAULT,
        autoplay: false,
        viewportFraction: 1,
        scale: .98,
        fade: 1,
        duration: 700,
        customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
          ..addTranslate([
            const Offset(-370.0, 1.0),
            const Offset(0.0, 0.0),
            const Offset(370.0, 1.0)
          ]),
        itemWidth: double.infinity,
        itemHeight: 450.0,
        itemBuilder: (context, i) {
          return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ProfileWidget(
                          image: feedBackList[i].image,
                          padding: 0,
                          size: 70,
                        ),
                        const SizedBox(width: 20),
                        SizedBox(
                          width: 220,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                feedBackList[i].name,
                                style: const TextStyle(
                                  color: Colors.orange,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                feedBackList[i].work,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      feedBackList[i].p,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    ' Content:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  star,
                                  const SizedBox(height: 30),
                                  const Text(
                                    ' Platform:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  star
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    ' Mentor:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  star,
                                  const SizedBox(height: 30),
                                  const Text(
                                    ' Community:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  star
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        },
        itemCount: feedBackList.length,
      ),
    );
  }
}
