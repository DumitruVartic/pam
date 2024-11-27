import 'package:flutter/material.dart';

Widget getImageFromUrl(String url) {
  return Image.network(
    url,
    loadingBuilder: (context, child, loadingProgress) {
      if (loadingProgress == null) {
        return child; // Return the image once it's loaded
      } else {
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    (loadingProgress.expectedTotalBytes ?? 1)
                : null,
          ),
        );
      }
    },
    errorBuilder: (context, error, stackTrace) {
      return Center(child: Icon(Icons.error));
    },
  );
}
