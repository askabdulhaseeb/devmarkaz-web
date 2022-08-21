import 'package:flutter/material.dart';

import '../utilities/app_images.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.padding,
    Key? key,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String imagePath;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(left: 64),
      child: Card(
        elevation: 2,
        child: Container(
          height: 340,
          width: 240,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(imagePath),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SelectableText(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SelectableText(
                      subtitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
