import 'package:flutter/material.dart';

List<String> filterList = [
  'App Development',
  'Web Development',
  'Game Development',
  'Data Structure',
  'Programing',
  'Machine Learning',
  'Data Science',
  'Others',
];

Widget filter = SizedBox(
  height: 90,
  width: double.infinity,
  child: ListView(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    children: [
      Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Text(
              'Trending',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      for (String i in filterList)
        Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.06),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                i,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
    ],
  ),
);
