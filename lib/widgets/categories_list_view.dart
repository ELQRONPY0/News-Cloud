import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(name: 'technology', image: 'assets/technology.jpeg'),
    CategoryModel(name: 'science', image: 'assets/science.avif'),
    CategoryModel(name: 'entertainment', image: 'assets/entertaiment.avif'),
    CategoryModel(name: 'business', image: 'assets/business.jpg'),
    CategoryModel(name: 'health', image: 'assets/health.avif'),
    CategoryModel(name: 'sports', image: 'assets/sports.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            categories: categories[index],
          );
        },
      ),
    );
  }
}
