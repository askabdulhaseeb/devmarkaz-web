import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({
    required this.imageURL,
    this.radius = 30,
    Key? key,
  }) : super(key: key);
  final String imageURL;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return imageURL.isEmpty
        ? CircleAvatar(
            radius: radius,
            child: const Center(child: Text('?')),
          )
        : CircleAvatar(
            radius: radius,
            backgroundImage: ExtendedNetworkImageProvider(
              imageURL,
              cache: true,
              timeLimit: const Duration(days: 1),
            ),
          );
  }
}
