class ForStudentsCardClass {
  ForStudentsCardClass({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.button,
  });
  String title;
  String subTitle;
  String image;
  String button;
}

List<ForStudentsCardClass> forStudentsList = [
  ForStudentsCardClass(
    image: 'assets/images/girl_learning.png',
    subTitle: 'Unlock your learning potential with CipherSchools',
    title: 'Best platform for the students',
    button: 'For Students',
  ),
  ForStudentsCardClass(
    image: 'assets/images/girl_teaching.jpg',
    subTitle: 'Empowering students to open their minds to utmost knowledge',
    title: 'Be the mentor you never had',
    button: 'For Creators',
  )
];
