import 'package:assignment_01_cipherschools/Screens/Home_Screen/widgets/profilesImage.dart';
import 'package:flutter/material.dart';

Widget course = Padding(
  padding: const EdgeInsets.all(5.0),
  child: Container(
    width: 180,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          spreadRadius: 1,
          blurRadius: 2,
          color: Colors.black.withOpacity(.1),
        ),
      ],
    ),
    child: Column(
      children: [
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          child: Image.asset('assets/images/python.png'),
        ),
        const SizedBox(height: 15),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(.1),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(7),
                bottomRight: Radius.circular(7),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Programing',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Complete Python Tutorial in Hindi',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'No. of videos: 241',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Text(
                'Course time: 27.8 Hours',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ProfileWidget(
                    image: 'assets/images/rating_person1.png',
                    padding: 0,
                    size: 40,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: const [
                      Text(
                        'Harshit',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Instructor',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  ),
);

Widget courses = Column(
  children: [
    Row(
      children: [
        course,
        course,
      ],
    ),
    Row(
      children: [
        course,
        course,
      ],
    ),
  ],
);
