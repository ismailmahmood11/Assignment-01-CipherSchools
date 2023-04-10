import 'package:flutter/material.dart';

class Profiles extends StatelessWidget {
  const Profiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProfileWidget(
          image: 'assets/images/rating_person3.png',
          padding: 50.0,
          size: 50,
        ),
        ProfileWidget(
          image: 'assets/images/rating_person2.png',
          padding: 25,
          size: 50,
        ),
        ProfileWidget(
          image: 'assets/images/rating_person1.png',
          padding: 0,
          size: 50,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class ProfileWidget extends StatelessWidget {
  ProfileWidget({
    required this.image,
    required this.padding,
    required this.size,
    super.key,
  });
  String image;
  double padding;
  double size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: padding),
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color(0xff353A42),
            boxShadow: const [
              BoxShadow(
                spreadRadius: 5,
                color: Colors.white,
              ),
            ]),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
