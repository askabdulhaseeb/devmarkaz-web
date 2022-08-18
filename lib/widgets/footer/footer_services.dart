import 'package:flutter/material.dart';

class FooterServices extends StatelessWidget {
  const FooterServices({required this.boxSize, Key? key}) : super(key: key);

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
              ' Our Services',
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
                'Mobile App',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Web Development',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Desktop Applications',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'UI/UX Designs',
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
