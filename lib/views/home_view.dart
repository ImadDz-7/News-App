import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
import 'package:news_app/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            NewsListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
