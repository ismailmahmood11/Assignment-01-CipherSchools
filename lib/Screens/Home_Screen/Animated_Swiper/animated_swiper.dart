import 'package:assignment_01_cipherschools/Screens/Home_Screen/Animated_Swiper/animated_swiper_list.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class AnimatedSwiper extends StatelessWidget {
  const AnimatedSwiper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Swiper(
        layout: SwiperLayout.DEFAULT,
        autoplay: true,
        customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
          ..addTranslate([
            const Offset(-200.0, -10.0),
            const Offset(0.0, 0.0),
            const Offset(370.0, -40.0),
          ]),
        itemWidth: 230.0,
        itemHeight: 230.0,
        itemBuilder: (context, i) {
          return Container(
            height: 230,
            width: 230,
            decoration: BoxDecoration(
              color: const Color(0xff353a42),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                        ),
                        height: 80,
                        width: 80,
                        child: Center(
                          child: Icon(
                            animatedSwiperList[i].icon,
                            color: Colors.orange,
                            size: 35,
                          ),
                        ),
                      ),
                      Image.asset('assets/images/free_banner.png'),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(
                    animatedSwiperList[i].title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, top: 10),
                    child: Text(
                      animatedSwiperList[i].subTitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: animatedSwiperList.length,
        viewportFraction: .7,
        scale: .9,
        fade: .6,
        duration: 700,
      ),
    );
  }
}
