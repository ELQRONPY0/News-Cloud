class ArticleModel {
  final String title;
  final String? supTitle;
  final String image;
  final String url;

  ArticleModel({
    required this.url,
    required this.title,
    required this.supTitle,
    required this.image,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      url: json['url'],
      title: json['title'],
      supTitle: json['description'],
      image: json['image'],
    );
  }
}
