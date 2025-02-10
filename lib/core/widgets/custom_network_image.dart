import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) => Center(
          child: Skeletonizer(
        child: Container(color: Colors.red, width: 100, height: 100),
      )),
      errorWidget: (context, url, error) => Icon(
        Icons.image_not_supported_rounded,
        color: Colors.grey[400],
        // size: 100,
      ),
    );
  }
}
