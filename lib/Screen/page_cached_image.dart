import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PageCachedImage extends StatelessWidget {
  const PageCachedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Cache Image'),
      ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi7rPjVS1cyEQiuDeAzRS3yKlCg0Epnn6rsw&s",
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) =>
          const Icon(Icons.error, size: 50, color: Colors.red),
        ),
      ),
    );
  }
}
