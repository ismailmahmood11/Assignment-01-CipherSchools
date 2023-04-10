class Mentors {
  Mentors({required this.name, required this.image, required this.job});
  String name;
  String image;
  String job;
}

List<Mentors> mentorsList = [
  Mentors(
    name: 'Anurag',
    image: 'assets/images/rating_person1.png',
    job: 'Coding Mentor',
  ),
  Mentors(
    name: 'Ranjan',
    image: 'assets/images/rating_person2.png',
    job: 'Coding Mentor',
  ),
  Mentors(
    name: 'Sanjeev',
    image: 'assets/images/rating_person4.png',
    job: 'Oracle',
  ),
];
