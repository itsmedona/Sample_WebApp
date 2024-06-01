class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? gitRepoLink;
  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.gitRepoLink,
  });
}

//PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
      image: 'assets/images/quiz.png',
      title: 'QwizB',
      subtitle:
          'This is a comprehensive learning app for practicing different qustions.',
      gitRepoLink: 'https://github.com/itsmedona/QwizB/'),
  ProjectUtils(
      image: 'assets/images/shopping.png',
      title: 'Shopping App',
      subtitle:
          'Discover amazing deals and exclusive offers on top brands at your fingertips with our easy-to-use shopping app',
      gitRepoLink: 'https://github.com/itsmedona/ShoppingAPI_FltrGetX'),
  ProjectUtils(
      image: 'assets/images/calculator.png',
      title: 'Calc',
      subtitle:
          'Effortlessly solve complex equations and perform everyday calculations with our user-friendly calculator app.',
      gitRepoLink: 'https://github.com/itsmedona/Calculator'),
  ProjectUtils(
      image: 'assets/images/reddit.png',
      title: 'Reddit clone App',
      subtitle:
          'Discover trending discussions, share your thoughts, and stay connected with communities that matter to you with the Reddit app.',
      gitRepoLink: 'https://github.com/itsmedona/Reddit_App'),
  ProjectUtils(
      image: 'assets/images/notes_app.png',
      title: 'NotePad App',
      subtitle: 'This is a note taking app',
      gitRepoLink: 'https://github.com/itsmedona/SimpleToDo'),
];
