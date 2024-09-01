import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryNewsView extends StatelessWidget {
  const CategoryNewsView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors
            .white, // تعيين لون الخلفية ليكون أبيض ليتناسق مع التصميم العام
        elevation: 1, // إضافة ظل خفيف لتعزيز الفاصل بين العنوان والمحتوى
        centerTitle: true,
        title: Text(
          category.toUpperCase(), // تكبير الحروف لإبراز اسم الفئة
          style: const TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold, // جعل الخط عريض لإبراز العنوان
            fontSize: 20, // تكبير حجم الخط
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Colors.orange), // تغيير لون أيقونة الرجوع لتتناسب مع الثيم
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category,
            ),
          ],
        ),
      ),
      backgroundColor:
          Colors.grey[100], // إضافة خلفية رمادية خفيفة لتحسين المظهر العام
    );
  }
}
