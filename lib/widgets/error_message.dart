import 'package:flutter/material.dart';

class ErrorMessageWidget extends StatelessWidget {
  const ErrorMessageWidget({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const Image(
            image: AssetImage('assets/error.jpg'),
          ),
          Text(
            message,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
