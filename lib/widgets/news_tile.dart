import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ClipRRect(
        //   borderRadius: BorderRadius.circular(8),
        //   child: CachedNetworkImage(
        //     height: 196,
        //     width: double.infinity,
        //     fit: BoxFit.fill,
        //     imageUrl: article.image,
        //     placeholder: (context, url) => const CircularProgressIndicator(),
        //     errorWidget: (context, url, error) => Icon(Icons.error),
        //   ),
        // ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            height: 195,
            width: double.infinity,
            fit: BoxFit.fill,
            article.image ??
                'https://media.istockphoto.com/id/1353858440/vector/abstract-breaking-news-modern-background-wallpaper-new-media-backdrop-for-news-and-channel.jpg?s=612x612&w=0&k=20&c=Qz30hGfczQm1mgtnp-o3Pq-tb6ycEYEjPgMHlnqY_HM=',
          ),
        ),
        const SizedBox(height: 5),
        Text(
          article.title,
          maxLines: 2,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          article.description ?? '',
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
