import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
              height: 195,
              width: double.infinity,
              fit: BoxFit.fill,
              'https://media.istockphoto.com/id/1353858440/vector/abstract-breaking-news-modern-background-wallpaper-new-media-backdrop-for-news-and-channel.jpg?s=612x612&w=0&k=20&c=Qz30hGfczQm1mgtnp-o3Pq-tb6ycEYEjPgMHlnqY_HM='),
        ),
        const SizedBox(height: 5),
        Text(
          'Large text should placed here Large text should placed here Large text should placed here Large text should placed here Large text should placed here',
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
          'Small text should placed here Small text should placed here Small text should placed here Small text should placed here ',
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
