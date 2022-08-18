import 'package:flutter/material.dart';

class FooterReachUs extends StatelessWidget {
  const FooterReachUs({required this.boxSize, Key? key}) : super(key: key);

  final double boxSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: boxSize + 100,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              ' Reach Us',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.mail, color: Colors.white),
              label: const Text(
                'askabdulhaseeb@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.phone_android, color: Colors.white),
              label: const Text(
                '+92 345 1021122',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.location_on, color: Colors.white),
              label: const Text(
                'Lahore, PK',
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
