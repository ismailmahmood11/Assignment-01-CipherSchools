class FeedBackListClass {
  FeedBackListClass({
    required this.image,
    required this.name,
    required this.work,
    required this.p,
  });
  String image;
  String name;
  String work;
  String p;
}

List<FeedBackListClass> feedBackList = [
  FeedBackListClass(
      image: 'assets/images/rating_person1.png',
      name: 'Awanit Sing',
      work: 'Hyper Text Markup Language(HTML)',
      p: 'Thank you for giving me these types of videos. That help to understand HTML and CSS'),
  FeedBackListClass(
      image: 'assets/images/rating_person2.png',
      name: 'Bhavani Prasad',
      work: "The Beginner's Guide to Microsoft Excel | Excel Traning",
      p: 'One of the useful classes to improve the basics'),
  FeedBackListClass(
      image: 'assets/images/rating_person3.png',
      name: 'Kuldeep Vishwas',
      work: 'Hyper Text Markup Language (HTML)',
      p: 'Very better explain, Many things I got to learn from here, All the videos have good explaination'),
];
