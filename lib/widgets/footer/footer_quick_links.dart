import 'package:flutter/material.dart';

class FooterQuickLinks extends StatelessWidget {
  const FooterQuickLinks({required this.boxSize, Key? key}) : super(key: key);

  final double boxSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: boxSize,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              ' Quick Links',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Services',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'About',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Projects',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
