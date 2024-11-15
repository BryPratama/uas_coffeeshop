class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'Silahkan pilih menu anda',
      image: "images/screen1.png",
      title: 'Pilih dari Menu unggulan Kami'),
  UnboardingContent(
      description: 'Bisa bayar dengan Cash dan juga Cashless!',
      image: "images/screen2.jpg",
      title: 'Cepat dan Mudah!'),
];
